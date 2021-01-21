#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="wireguard-dkms wireguard"

#=================================================
# PERSONAL HELPERS
#=================================================

ynh_systemd_action() {
    # Declare an array to define the options of this helper.
    local legacy_args=nalpte
    local -A args_array=( [n]=service_name= [a]=action= [l]=line_match= [p]=log_path= [t]=timeout= [e]=length= )
    local service_name
    local action
    local line_match
    local length
    local log_path
    local timeout
    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"
    service_name="${service_name:-$app}"
    action=${action:-start}
    line_match=${line_match:-}
    length=${length:-20}
    log_path="${log_path:-/var/log/$service_name/$service_name.log}"
    timeout=${timeout:-300}

    # Start to read the log
    if [[ -n "$line_match" ]]
    then
        local templog="$(mktemp)"
        # Following the starting of the app in its log
        if [ "$log_path" == "systemd" ]
        then
            # Read the systemd journal
            journalctl --unit=$service_name --follow --since=-0 --quiet > "$templog" &
            # Get the PID of the journalctl command
            local pid_tail=$!
            sleep 5
        else
            # Read the specified log file
            tail --follow=name --retry --lines=0 "$log_path" > "$templog" 2>&1 &
            # Get the PID of the tail command
            local pid_tail=$!
        fi
    fi

    # Use reload-or-restart instead of reload. So it wouldn't fail if the service isn't running.
    if [ "$action" == "reload" ]; then
        action="reload-or-restart"
    fi

    # If the service fails to perform the action
    if ! systemctl $action $service_name
    then
        # Show syslog for this service
        ynh_exec_err journalctl --quiet --no-hostname --no-pager --lines=$length --unit=$service_name
        # If a log is specified for this service, show also the content of this log
        if [ -e "$log_path" ]
        then
            ynh_print_err --message="--"
            ynh_exec_err tail --lines=$length "$log_path"
        fi
        # Fail the app script, since the service failed.
        ynh_die
    fi

    # Start the timeout and try to find line_match
    if [[ -n "${line_match:-}" ]]
    then
        set +x
        local i=0
        for i in $(seq 1 $timeout)
        do
            # Read the log until the sentence is found, that means the app finished to start. Or run until the timeout
            if grep --extended-regexp --quiet "$line_match" "$templog"
            then
                ynh_print_info --message="The service $service_name has correctly executed the action ${action}."
                break
            fi
            if [ $i -eq 3 ]; then
                echo -n "Please wait, the service $service_name is ${action}ing" >&2
            fi
            if [ $i -ge 3 ]; then
                echo -n "." >&2
            fi
            sleep 1
        done
        set -x
        if [ $i -ge 3 ]; then
            echo "" >&2
        fi
        if [ $i -eq $timeout ]
        then
            ynh_print_warn --message="The service $service_name didn't fully executed the action ${action} before the timeout."
            ynh_print_warn --message="Please find here an extract of the end of the log of the service $service_name:"
            ynh_exec_warn journalctl --quiet --no-hostname --no-pager --lines=$length --unit=$service_name
            if [ -e "$log_path" ]
            then
                ynh_print_warn --message="\-\-\-"
                ynh_exec_warn tail --lines=$length "$log_path"
            fi
        fi
        ynh_clean_check_starting
    fi
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Check the architecture
#
# example: architecture=$(ynh_detect_arch)
#
# usage: ynh_detect_arch
#
# Requires YunoHost version 2.2.4 or higher.

ynh_detect_arch(){
	local architecture
	if [ -n "$(uname -m | grep arm64)" ] || [ -n "$(uname -m | grep aarch64)" ]; then
		architecture="arm64"
	elif [ -n "$(uname -m | grep 64)" ]; then
		architecture="amd64"
	elif [ -n "$(uname -m | grep 86)" ]; then
		architecture="386"
	elif [ -n "$(uname -m | grep arm)" ]; then
		architecture="arm"
	else
		architecture="unknown"
	fi
	echo $architecture
}

# Send an email to inform the administrator
#
# usage: ynh_send_readme_to_admin --app_message=app_message [--recipients=recipients] [--type=type]
# | arg: -m --app_message= - The file with the content to send to the administrator.
# | arg: -r, --recipients= - The recipients of this email. Use spaces to separate multiples recipients. - default: root
#	example: "root admin@domain"
#	If you give the name of a YunoHost user, ynh_send_readme_to_admin will find its email adress for you
#	example: "root admin@domain user1 user2"
# | arg: -t, --type= - Type of mail, could be 'backup', 'change_url', 'install', 'remove', 'restore', 'upgrade'
ynh_send_readme_to_admin() {
	# Declare an array to define the options of this helper.
	declare -Ar args_array=( [m]=app_message= [r]=recipients= [t]=type= )
	local app_message
	local recipients
	local type
	# Manage arguments with getopts

	ynh_handle_getopts_args "$@"
	app_message="${app_message:-}"
	recipients="${recipients:-root}"
	type="${type:-install}"

	# Get the value of admin_mail_html
	admin_mail_html=$(ynh_app_setting_get $app admin_mail_html)
	admin_mail_html="${admin_mail_html:-0}"

	# Retrieve the email of users
	find_mails () {
		local list_mails="$1"
		local mail
		local recipients=" "
		# Read each mail in argument
		for mail in $list_mails
		do
			# Keep root or a real email address as it is
			if [ "$mail" = "root" ] || echo "$mail" | grep --quiet "@"
			then
				recipients="$recipients $mail"
			else
				# But replace an user name without a domain after by its email
				if mail=$(ynh_user_get_info "$mail" "mail" 2> /dev/null)
				then
					recipients="$recipients $mail"
				fi
			fi
		done
		echo "$recipients"
	}
	recipients=$(find_mails "$recipients")

	# Subject base
	local mail_subject="☁️🆈🅽🅷☁️: \`$app\`"

	# Adapt the subject according to the type of mail required.
	if [ "$type" = "backup" ]; then
		mail_subject="$mail_subject has just been backup."
	elif [ "$type" = "change_url" ]; then
		mail_subject="$mail_subject has just been moved to a new URL!"
	elif [ "$type" = "remove" ]; then
		mail_subject="$mail_subject has just been removed!"
	elif [ "$type" = "restore" ]; then
		mail_subject="$mail_subject has just been restored!"
	elif [ "$type" = "upgrade" ]; then
		mail_subject="$mail_subject has just been upgraded!"
	else	# install
		mail_subject="$mail_subject has just been installed!"
	fi

	local mail_message="This is an automated message from your beloved YunoHost server.

Specific information for the application $app.

$(if [ -n "$app_message" ]
then
	cat "$app_message"
else
	echo "...No specific information..."
fi)

---
Automatic diagnosis data from YunoHost

__PRE_TAG1__$(yunohost tools diagnosis | grep -B 100 "services:" | sed '/services:/d')__PRE_TAG2__"

	# Store the message into a file for further modifications.
	echo "$mail_message" > mail_to_send

	# If a html email is required. Apply html tags to the message.
 	if [ "$admin_mail_html" -eq 1 ]
 	then
		# Insert 'br' tags at each ending of lines.
		ynh_replace_string "$" "<br>" mail_to_send

		# Insert starting HTML tags
		sed --in-place '1s@^@<!DOCTYPE html>\n<html>\n<head></head>\n<body>\n@' mail_to_send

		# Keep tabulations
		ynh_replace_string "  " "\&#160;\&#160;" mail_to_send
		ynh_replace_string "\t" "\&#160;\&#160;" mail_to_send

		# Insert url links tags
		ynh_replace_string "__URL_TAG1__\(.*\)__URL_TAG2__\(.*\)__URL_TAG3__" "<a href=\"\2\">\1</a>" mail_to_send

		# Insert pre tags
		ynh_replace_string "__PRE_TAG1__" "<pre>" mail_to_send
		ynh_replace_string "__PRE_TAG2__" "<\pre>" mail_to_send

		# Insert finishing HTML tags
		echo -e "\n</body>\n</html>" >> mail_to_send

	# Otherwise, remove tags to keep a plain text.
	else
		# Remove URL tags
		ynh_replace_string "__URL_TAG[1,3]__" "" mail_to_send
		ynh_replace_string "__URL_TAG2__" ": " mail_to_send

		# Remove PRE tags
		ynh_replace_string "__PRE_TAG[1-2]__" "" mail_to_send
	fi

	# Define binary to use for mail command
	if [ -e /usr/bin/bsd-mailx ]
	then
		local mail_bin=/usr/bin/bsd-mailx
	else
		local mail_bin=/usr/bin/mail.mailutils
	fi

	if [ "$admin_mail_html" -eq 1 ]
	then
		content_type="text/html"
	else
		content_type="text/plain"
	fi

	# Send the email to the recipients
	cat mail_to_send | $mail_bin -a "Content-Type: $content_type; charset=UTF-8" -s "$mail_subject" "$recipients"
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

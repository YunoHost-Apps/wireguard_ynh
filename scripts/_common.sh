#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

_ynh_config_add_nftables() {
    ynh_add_config --template="nftables.conf" --destination="/etc/nftables.d/${app}.conf"
    ynh_systemd_action --service_name=nftables.service --action=reload
}

_ynh_config_remove_nftables() {
    ynh_secure_remove "/etc/nftables.d/${app}.conf"
    ynh_systemd_action --service_name=nftables.service --action=reload
}

_ynh_config_restore_nftables() {
    ynh_restore_file --origin_path="/etc/nftables.d/${app}.conf"
    ynh_systemd_action --service_name=nftables.service --action=reload 
}

#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

_ynh_config_add_nftables() {
    ynh_config_add --template="nftables.conf" --destination="/etc/nftables.d/${app}.conf"
    ynh_systemctl --service_name=nftables.service --action=reload
}

_ynh_config_remove_nftables() {
    ynh_safe_rm "/etc/nftables.d/${app}.conf"
    ynh_systemctl --service_name=nftables.service --action=reload
}

_ynh_config_restore_nftables() {
    ynh_restore --origin_path="/etc/nftables.d/${app}.conf"
    ynh_systemctl --service_name=nftables.service --action=reload 
}

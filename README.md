# WireGuard for YunoHost

[![Integration level](https://dash.yunohost.org/integration/wireguard.svg)](https://dash.yunohost.org/appci/app/wireguard) ![](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)  
[![Install WireGuard with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Lire ce readme en français.](./README_fr.md)*

:warning: This app is still experimental. Check its compatibility before running it on a production system. :warning:

:exclamation: WireGuard for YunoHost will add a DMKS module to your Linux kernel.

> *This package allows you to install WireGuard quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
This app installs WireGuard, a software to create and manage virtual private networks (VPN), along with WireGuard UI to avoid having to use the command line to manage them.

**Shipped version of the web UI:** 0.2.7

## Screenshots

![](https://user-images.githubusercontent.com/6447444/80270680-76adf980-86e4-11ea-8ca1-9237f0dfa249.png)

## Configuration

WireGuard can be configured via a non-official web UI. Avoid altering the configuration files via the command line interface, though.

If you want to use the server as an endpoint for your clients' Internet connection, add the following commands in `WireGuard Server` menu.
Replace `eth0` with the interface connected to the Internet.

#### Post Up Script
```
iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

#### Post Down Script
```
iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE
```

## Documentation

 * Official documentation: https://www.wireguard.com/quickstart/
<!-- * YunoHost documentation: -->

## YunoHost specific features

#### Multi-user support

* Are LDAP and HTTP auth supported? No, use YunoHost permissions panel to allow users to access the web UI.
* Can the app be used by multiple users? Yes, but any user allowed to access the web UI will be able to alter the VPN settings and access the clients credentials.

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/wireguard%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/wireguard/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/wireguard%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/wireguard/)

## Limitations

* :construction: The web UI can only be installed at the root of a domain.
* :construction: Only one network interface, *wg0* can be managed with this app.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/wireguard_ynh/issues
 * App website: https://www.wireguard.com
 * Upstream app repository: https://www.wireguard.com/repositories
 * Upstream web UI repository: https://github.com/ngoduykhanh/wireguard-ui
 * YunoHost website: https://yunohost.org/

---

Developer info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
or
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

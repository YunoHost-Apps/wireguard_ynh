<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# WireGuard Server voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/wireguard.svg)](https://ci-apps.yunohost.org/ci/apps/wireguard/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)

[![WireGuard Server met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je WireGuard Server snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

This package includes an administration interface for WireGuard, which makes it more of a VPN server. Even though WireGuard can be peer-to-peer, this is not how this package configures it.


**Geleverde versie:** 0.6.2~ynh3

## Schermafdrukken

![Schermafdrukken van WireGuard Server](./doc/screenshots/screenshot.png)

## Documentatie en bronnen

- Officiele website van de app: <https://www.wireguard.com/>
- Upstream app codedepot: <https://github.com/ngoduykhanh/wireguard-ui>
- YunoHost-store: <https://apps.yunohost.org/app/wireguard>
- Meld een bug: <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
of
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>

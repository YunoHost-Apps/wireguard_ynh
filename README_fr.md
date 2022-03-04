# WireGuard pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/wireguard.svg)](https://dash.yunohost.org/appci/app/wireguard) ![](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)  
[![Installer WireGuard avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer WireGuard rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

**Version incluse :** 0.3.6~ynh2



## Captures d'écran

![](./doc/screenshots/screenshot.png)
![](./doc/screenshots/screenshot.png:Zone.Identifier)

## Avertissements / informations importantes

* Cette application ajoutera un module DMKS à votre noyau Linux.
  * Vous devriez redémarrer votre serveur pour que WireGuard puisse se lancer.
* Cette application inclut WireGuard et une interface web non-officielle pour le configurer.
  * Ne modifiez pas les fichiers de configuration à la main.
* Utiliser le panneau de permissions de YunoHost pour autoriser des utilisateurs à accéder à WireGuard UI.
* Une seule interface réseau, *wg0*, peut actuellement être gérée par cette app.
* La page `Status` demeure non fonctionnelle pour l'instant.

Après installation, vous devrez cliquer sur `Apply Config` une fois dans l'UI avant que le service VPN puisse être démarré.

## Documentations et ressources

* Site officiel de l'app : https://www.wireguard.com/
* Dépôt de code officiel de l'app : https://github.com/ngoduykhanh/wireguard-ui
* Documentation YunoHost pour cette app : https://yunohost.org/app_wireguard
* Signaler un bug : https://github.com/YunoHost-Apps/wireguard_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
ou
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps
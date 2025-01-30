<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# WireGuard Server pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/wireguard)](https://ci-apps.yunohost.org/ci/apps/wireguard/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/wireguard)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/wireguard)

[![Installer WireGuard Server avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer WireGuard Server rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

WireGuard® est un VPN rapide et moderne qui utilise une cryptographie de pointe. Il vise à être plus rapide, plus simple, plus léger et plus utile qu'IPsec. Il a l'intention d'être considérablement plus performant qu'OpenVPN. WireGuard est conçu comme un VPN à usage général.

Ce package inclut une interface d'administration pour WireGuard, ce qui le fait être plutôt un serveur VPN. Bien que WireGuard puisse être pair-à-pair, ce n'est pas comment ce package le configure.


**Version incluse :** 0.6.2~ynh4

## Captures d’écran

![Capture d’écran de WireGuard Server](./doc/screenshots/screenshot.png)

## Documentations et ressources

- Site officiel de l’app : <https://www.wireguard.com/>
- Dépôt de code officiel de l’app : <https://github.com/ngoduykhanh/wireguard-ui>
- YunoHost Store : <https://apps.yunohost.org/app/wireguard>
- Signaler un bug : <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
ou
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>

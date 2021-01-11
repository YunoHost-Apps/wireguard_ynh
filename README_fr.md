# WireGuard pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/wireguard.svg)](https://dash.yunohost.org/appci/app/wireguard) ![](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)  
[![Installer WireGuard avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Read this readme in english.](./README.md)* 

:warning: Cette app est encore expérimentale. Vérifiez sa compatibilté avant de lancer l'installation sur un serveur de production. :warning:

:exclamation: WireGuard pour YunoHost ajoutera un module DKMS à votre noyau Linux.

> *Ce package vous permet d'installer WireGuard rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Cette application installe WireGuard, logiciel permettant de créer des réseaux privés virtuels (VPN), accompagné de WireGuard UI pour éviter de les configurer par la ligne de commande.

**Version de la web UI incluse :** 0.2.7

## Capture d'écran

![](https://user-images.githubusercontent.com/6447444/80270680-76adf980-86e4-11ea-8ca1-9237f0dfa249.png)

## Configuration

WireGuard est configurable via une web UI non-officielle. Évitez de toucher aux fichiers de configuration via la ligne de commande.

Si vous souhaitez utiliser votre serveur comme point d'accès pour la connexion Internet de vos clients, ajoutez les commandes suivantes dans le menu `WireGuard Server`.
Remplacez `eth0` par l'interface connectée à l'Internet.

#### Post Up Script
```
iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

#### Post Down Script
```
iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE
```

## Documentation

 * Documentation officielle : https://www.wireguard.com/quickstart/
<!-- * Documentation YunoHost : -->

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? Non, utilisez le système de permissions de YunoHost pour permettre à vos utilisateurs d'utiliser la web UI.
* L'application peut-elle être utilisée par plusieurs utilisateurs ? Oui, mais tout utilisateur aura la main sur la configuration du VPN et les identifiants de ses clients.

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/wireguard%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/wireguard/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/wireguard%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/wireguard/)

## Limitations

* :construction: La web UI ne peut être installée qu'à la racine d'un domaine.
* :construction: Seulement une seule interface réseau, *wg0*, peut être gérée par l'application.

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/wireguard_ynh/issues
 * Site de l'application : https://www.wireguard.com
 * Dépôt de l'application principale : https://www.wireguard.com/repositories
 * Dépôt de la web UI : https://github.com/ngoduykhanh/wireguard-ui
 * Site web YunoHost : https://yunohost.org/

---

Informations pour les développeurs
----------------

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
ou
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

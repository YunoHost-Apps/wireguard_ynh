<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# WireGuard Server para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/wireguard.svg)](https://ci-apps.yunohost.org/ci/apps/wireguard/) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)

[![Instalar WireGuard Server con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar WireGuard Server de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

This package includes an administration interface for WireGuard, which makes it more of a VPN server. Even though WireGuard can be peer-to-peer, this is not how this package configures it.


**Versión proporcionada:** 0.6.2~ynh3

## Capturas de pantalla

![Captura de pantalla de WireGuard Server](./doc/screenshots/screenshot.png)

## Documentación e recursos

- Web oficial da app: <https://www.wireguard.com/>
- Repositorio de orixe do código: <https://github.com/ngoduykhanh/wireguard-ui>
- Tenda YunoHost: <https://apps.yunohost.org/app/wireguard>
- Informar dun problema: <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
ou
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>

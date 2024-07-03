<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# WireGuard Server para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/wireguard.svg)](https://ci-apps.yunohost.org/ci/apps/wireguard/) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)

[![Instalar WireGuard Server con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarWireGuard Server rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

This package includes an administration interface for WireGuard, which makes it more of a VPN server. Even though WireGuard can be peer-to-peer, this is not how this package configures it.


**Versión actual:** 0.6.2~ynh3

## Capturas

![Captura de WireGuard Server](./doc/screenshots/screenshot.png)

## Documentaciones y recursos

- Sitio web oficial: <https://www.wireguard.com/>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/ngoduykhanh/wireguard-ui>
- Catálogo YunoHost: <https://apps.yunohost.org/app/wireguard>
- Reportar un error: <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
o
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>

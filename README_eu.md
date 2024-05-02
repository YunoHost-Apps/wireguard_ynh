<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# WireGuard YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/wireguard.svg)](https://dash.yunohost.org/appci/app/wireguard) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)

[![Instalatu WireGuard YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek WireGuard YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

**Paketatutako bertsioa:** 0.6.2~ynh1

## Pantaila-argazkiak

![WireGuard(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://www.wireguard.com/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/ngoduykhanh/wireguard-ui>
- YunoHost Denda: <https://apps.yunohost.org/app/wireguard>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
edo
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>

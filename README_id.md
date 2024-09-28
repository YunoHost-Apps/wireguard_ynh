<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# WireGuard Server untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/wireguard.svg)](https://ci-apps.yunohost.org/ci/apps/wireguard/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)

[![Pasang WireGuard Server dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang WireGuard Server secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

This package includes an administration interface for WireGuard, which makes it more of a VPN server. Even though WireGuard can be peer-to-peer, this is not how this package configures it.


**Versi terkirim:** 0.6.2~ynh3

## Tangkapan Layar

![Tangkapan Layar pada WireGuard Server](./doc/screenshots/screenshot.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://www.wireguard.com/>
- Depot kode aplikasi hulu: <https://github.com/ngoduykhanh/wireguard-ui>
- Gudang YunoHost: <https://apps.yunohost.org/app/wireguard>
- Laporkan bug: <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
atau
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>

<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# WireGuard Server dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/wireguard)](https://ci-apps.yunohost.org/ci/apps/wireguard/)
![Status działania](https://apps.yunohost.org/badge/state/wireguard)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/wireguard)

[![Zainstaluj WireGuard Server z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację WireGuard Server na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

This package includes an administration interface for WireGuard, which makes it more of a VPN server. Even though WireGuard can be peer-to-peer, this is not how this package configures it.


**Dostarczona wersja:** 0.6.2~ynh3

## Zrzuty ekranu

![Zrzut ekranu z WireGuard Server](./doc/screenshots/screenshot.png)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://www.wireguard.com/>
- Repozytorium z kodem źródłowym: <https://github.com/ngoduykhanh/wireguard-ui>
- Sklep YunoHost: <https://apps.yunohost.org/app/wireguard>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
lub
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>

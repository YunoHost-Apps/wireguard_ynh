<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# WireGuard Server для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/wireguard)](https://ci-apps.yunohost.org/ci/apps/wireguard/)
![Состояние работы](https://apps.yunohost.org/badge/state/wireguard)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/wireguard)

[![Установите WireGuard Server с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить WireGuard Server быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

This package includes an administration interface for WireGuard, which makes it more of a VPN server. Even though WireGuard can be peer-to-peer, this is not how this package configures it.


**Поставляемая версия:** 0.6.2~ynh3

## Снимки экрана

![Снимок экрана WireGuard Server](./doc/screenshots/screenshot.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://www.wireguard.com/>
- Репозиторий кода главной ветки приложения: <https://github.com/ngoduykhanh/wireguard-ui>
- Магазин YunoHost: <https://apps.yunohost.org/app/wireguard>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
или
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>

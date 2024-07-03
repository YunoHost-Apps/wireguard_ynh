<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 WireGuard Server

[![集成程度](https://dash.yunohost.org/integration/wireguard.svg)](https://ci-apps.yunohost.org/ci/apps/wireguard/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/wireguard.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/wireguard.maintain.svg)

[![使用 YunoHost 安装 WireGuard Server](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=wireguard)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 WireGuard Server。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

WireGuard® is fast and modern VPN that utilizes state-of-the-art cryptography. It aims to be faster, simpler, leaner, and more useful than IPsec. It intends to be considerably more performant than OpenVPN. WireGuard is designed as a general purpose VPN.

This package includes an administration interface for WireGuard, which makes it more of a VPN server. Even though WireGuard can be peer-to-peer, this is not how this package configures it.


**分发版本：** 0.6.2~ynh3

## 截图

![WireGuard Server 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方应用网站： <https://www.wireguard.com/>
- 上游应用代码库： <https://github.com/ngoduykhanh/wireguard-ui>
- YunoHost 商店： <https://apps.yunohost.org/app/wireguard>
- 报告 bug： <https://github.com/YunoHost-Apps/wireguard_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
或
sudo yunohost app upgrade wireguard -u https://github.com/YunoHost-Apps/wireguard_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>

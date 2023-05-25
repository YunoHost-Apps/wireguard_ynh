* WireGuard for YunoHost will add a DMKS module to your Linux kernel.
  * You may need to reboot your server for WireGuard to be able to start.
* The package includes WireGuard and non-official web UI to configure it.
  * Do not manually alter the configuration files.
* Use YunoHost permissions panel to allow users to access the web UI.
* Only one network interface, *wg0*, can be managed with this app at the moment.
* `Status` page is not working for the time being.

After installation, you need to `Apply Config` once in the UI before the VPN service can be started.

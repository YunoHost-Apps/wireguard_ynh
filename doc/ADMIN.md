After installation, you need to `Apply Config` once in the UI before the VPN service can be started.

If nothing comes out of the VPN, consider lowering the MTU in the global settings of the WireGuard webapp to 1400, for example.

* Do not manually alter the configuration files, use the web UI.
* Use YunoHost permissions panel to allow users to access the web UI.
* Only one network interface, *wg0*, can be managed with this app at the moment.
* `Status` page is not working for the time being.


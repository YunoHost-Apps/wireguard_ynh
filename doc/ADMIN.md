### After installation
1. Create your clients
2. Click the `Apply Config` button in the top right of the screen

### Limitations and warnings
* Do not manually alter the configuration files, use the web UI.
* Use YunoHost permissions panel to allow users to access the web UI.
* Only one network interface, *wg0*, can be managed with this app at the moment.
* `Status` page is not working for the time being.
* You may notice the mismatch between clients' default IP allocation addresses (ending with "/32" and "/128") compared to the server' interface addresses (ending with "/24" and "/112"). This is due to an upstream bug in the UI (cf. [related Github issue](https://github.com/ngoduykhanh/wireguard-ui/issues/548)) which nevertheless does not seem to prevent clients from working as expected.

### Troubleshooting
* If nothing comes out of the VPN, consider lowering the MTU in the global settings of the WireGuard webapp to 1400, for example.

* WireGuard for YunoHost will add a DMKS module to your Linux kernel.
  * You may need to reboot your server for WireGuard to be able to start.
* The package includes WireGuard and non-official web UI to configure it.
  * Avoid altering the configuration files via the command line interface, though.
* Use YunoHost permissions panel to allow users to access the web UI.
* Only one network interface, *wg0*, can be managed with this app at the moment.

### Make your server share its Internet connection

#### Enable port forwarding

```bash
sudo nano /etc/sysctl.conf
# Uncomment the following lines:
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
# Save and quit (CTRL+O, CTRL+X)
sudo sysctl -p
```

Add the following commands in `WireGuard Server` menu. Replace `eth0` with the interface connected to the Internet:

#### Post Up Script
```
iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

#### Post Down Script
```
iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE
```


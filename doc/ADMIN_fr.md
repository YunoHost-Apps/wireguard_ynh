Après installation, vous devrez cliquer sur `Apply Config` une fois dans l'UI avant que le service VPN puisse être démarré.

Si rien ne sort du VPN, essayez de changer le MTU dans les paramètres globaux de WireGuard, à 1400 par exemple.

* Ne modifiez pas les fichiers de configuration à la main, utilisez WireGuard UI.
* Utiliser le panneau de permissions de YunoHost pour autoriser des utilisateurs à accéder à WireGuard UI.
* Une seule interface réseau, *wg0*, peut actuellement être gérée par cette app.
* La page `Status` demeure non fonctionnelle pour l'instant.

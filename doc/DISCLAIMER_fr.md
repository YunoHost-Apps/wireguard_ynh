* Cette application ajoutera un module DMKS à votre noyau Linux.
  * Vous devriez redémarrer votre serveur pour que WireGuard puisse se lancer.
* Cette application inclut WireGuard et une interface web non-officielle pour le configurer.
  * Ne modifiez pas les fichiers de configuration à la main.
* Utiliser le panneau de permissions de YunoHost pour autoriser des utilisateurs à accéder à WireGuard UI.
* Une seule interface réseau, *wg0*, peut actuellement être gérée par cette app.

Après installation, vous devrez cliquer sur `Apply Config` une fois dans l'UI avant que le service VPN puisse être démarré.

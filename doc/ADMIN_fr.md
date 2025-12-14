### Après l'installation
1. Créez vos clients
2. Cliquez sur le bouton `Apply Config` en haut à droite de l'écran

### Limitations et avertissements
* Ne modifiez pas les fichiers de configuration à la main, utilisez WireGuard UI.
* Utiliser le panneau de permissions de YunoHost pour autoriser des utilisateurs à accéder à WireGuard UI.
* Une seule interface réseau, *wg0*, peut actuellement être gérée par cette app.
* La page `Status` demeure non fonctionnelle pour l'instant.
* Vous remarquerez peut-être que les "IP allocation addresses" par défaut des clients (finissant par "/32" et "/128") ne correspondent pas aux "server interface addresses" (finissant par "/24" et "/112"). Cela est dû à un bug en amont dans Wireguard UI (cf. [le ticket Github lié](https://github.com/ngoduykhanh/wireguard-ui/issues/548)) qui ne semble néanmoins pas empêcher les clients de fonctionner comme attendu.

### Résolution de problèmes
* Si rien ne sort du VPN, essayez de changer le MTU dans les paramètres globaux de WireGuard, à 1400 par exemple.

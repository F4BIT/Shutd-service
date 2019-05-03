# Shutd-service

La question reviens très souvent, comment arrêter mon Raspberry Pi proprement et simplement sans allumer un ordinateur.

Je me suis permis de reprendre du code trouver à travers Internet et me la garder sur un github pour la retrouver quand j'en ai besoin.

La solution est un script bash lancer au démarrage du Raspberry Pi qui surveille un GPIO qui lorsque le signal devient 'bas' un script (le shutdown.sh) ce lance et éteint le Raspi.

Les GPIO utilisé sont le 'GPIO27' broche 13 et la 'GROUND' broche 25, un simple bouton poussoir momentané suffit.

![alt tag](http://ham.mangeolle.fr/wp-content/uploads/2019/05/gpio-768x564.png)

Il suffit de télécharger le fichier 'install.sh' sur le GITHUB puis de faire en mode console un

chmod +x install.sh

puis de l'excecuter

./install.sh et le script s'occupe de l'installation complète, il ne vous reste plus qu'à câbler le boutton poussoir.

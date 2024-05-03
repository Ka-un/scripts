#!/bin/bash/

source /opt/supervision/scripts/fonction.sh

verificationNombre enteteMenu affichageMenu
case $entree in
1)
verificationNombre enteteMenuUtilisateur affichageMenuUtilisateur

bash /opt/supervision/scripts/fonctionUtilisateur.sh $entree
bash /opt/supervision/scripts/main.sh 
;;
2)
;;
3)
clear

entete

bash /opt/supervision/scripts/reseau.sh
bash /opt/supervision/scripts/main.sh 
;;
*)
;;
esac




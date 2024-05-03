#!/bin/bash
#est appelé par main.sh si l'utilisateur appel le 1.1) avec un paramètre 

source /opt/supervision/scripts/fonction.sh

case $1 in
1)
clear

enteteMenuUtilisateur

echo "Liste des utilisateurs standards :"
echo ""
cat /etc/passwd | grep "/bin/bash" | cut -f 1 -d :

echo ""
echo "uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu"
echo ""

echo "Liste des utilisateurs system :"
echo ""
cat /etc/passwd | grep "nologin" | cut -f 1 -d :

echo ""
read -s
;;
2)
clear

enteteMenuUtilisateur

echo "Liste des groupes :"
echo ""
cat /etc/group | cut -f 1 -d :

read -s
;;
3)
clear

enteteMenuUtilisateur

echo ""
echo "Pour creer un nouveau groupe veuiller rentrer un nom :"
echo ""

read -s group

echo ""
echo "Veuiller choisir le GID du groupe :"
echo ""

read -s ID

echo ""
echo "Vous avez créé le groupe $group avec le GID $ID"
echo ""

#groupadd -g $ID $group

read -s 
;;
4)
clear

enteteMenuUtilisateur

echo ""
echo "Pour créer un nouvel utilisateur veuillez rentrer un UID :"
echo ""

read -s uid

echo ""
echo "Veuillez choisir le GID :"
echo ""

read -s gid

echo ""
echo "Enfin veuillez choisir un nom"
echo ""

read -s name

echo "Vous avez créer l'utilisateur $name, UID: $uid, GID: $gid"

read -s
;;
5)

;;
*)
;;
esac
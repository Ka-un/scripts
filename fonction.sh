#!/bin/bash/

#affiche l'entête de chaque page
function entete {
    echo uuuuuuuuuuuuuuuuuuuuuuuuuu
    echo uuuuuuuuuuuuuuuuuuuuuuuuuu
    echo uuuuuuuuuuuuuuuuuuuuuuuuuu
    echo ""
}

#affiche l'entête du menu
function enteteMenuUtilisateur {
    echo uuuuuuuuuuuuuuuuuuuuuuuuuu
    echo uuuuuu Utilisateur uuuuuuu
    echo uuuuuuuuuuuuuuuuuuuuuuuuuu
    echo ""
}

#affiche l'entête du menu
function enteteMenu {
    echo uuuuuuuuuuuuuuuuuuuuuuuuuu
    echo uuuuuuuuu Menu uuuuuuuuuuu
    echo uuuuuuuuuuuuuuuuuuuuuuuuuu
    echo ""
}

#affiche le menu
function affichageMenu {
    echo "1) Scripts utilisateurs"
    echo "2) Scripts services"
    echo "3) tests"
    echo "4) divers"
    echo ""
}

#affiche le menu 1) utilisateur
function affichageMenuUtilisateur {
    echo "1.1) affichage utilisateur"
    echo "1.2) affichage group"
    echo "1.3) creer un group"
    echo "1.4) creer un utilisateur"
    echo "1.5) modifier le mot de passe d'un utilisateur"
    echo ""
}

#boucle de vérification de nombre $1 = entete $2 = menu à afficher
function verificationNombre {
    false
    while [[ $? = 1 ]]
    do
    clear
    $1
    $2
    echo "veuiller rentrer un chiffre"
    read -s entree
    let entree
    done
}
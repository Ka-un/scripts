#!/bin/bash 


afficher_menu() {
    echo "Menu réseau:"
    echo
    echo -e "${BLUE}1. Information du réseau${NC}"
    echo -e "${RED}2. Test IP${NC}"
    echo "Q. Quitter"
    echo
}

BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

while true; 
do
    afficher_menu

    read -p "CHOISISSEZ UNE OPTION : " choix

    case $choix in
        1)
            dns=$(grep "nameserver" /etc/resolv.conf | tail -1 | cut -d" " -f2)
            ip=$(hostname -i | awk '{print $2}' )
            passerelle=$(ip route | grep default | cut -d" " -f3)
            echo -e "L'adresse IP de votre serveur est     : ${RED}${ip}${NC} "
            echo -e "L'adresse IP de votre passerelle est  : ${RED}${passerelle}${NC}"
            echo -e "L'adresse IP de votre serveur DNS est : ${RED}${dns}${NC}"
            ;;


        2) 
            echo "IP(v4) a tester : "
            read ip            
            ping $ip -c 5
            entrer="Appuyez sur 'Entrer' pour quitter"
            echo -e "${RED}${entrer}${NC}"
            read -r

            ;;
        
            
        Q)
            echo "Au revoir !"
            clear
            
            ;;

        q)
            echo "Au revoir !"
            clear
            
            ;;
        *)
            echo "Choix invalide. Veuillez saisir un numéro valide."
            ;;
    esac
    read -s
    break
done


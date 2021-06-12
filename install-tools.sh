#!/bin/bash
#  HelloShell - Tool Installer

#  Colors

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # no color

clear
echo -e "${PURPLE}********************** Ey Pacha! *********************${WHITE}"
echo -e "  _  _         _   _         ___   _            _   _  "
echo -e " | || |  ___  | | | |  ___  / __| | |_    ___  | | | | "
echo -e " | __ | / -_) | | | | / _ \ \__ \ | ' \  / -_) | | | | "
echo -e " |_||_| \___| |_| |_| \___/ |___/ |_||_| \___| |_| |_| "
echo -e ""
echo -e "${PURPLE}****************** MY TOOL INSTALLER *****************"
echo -e "${NC}"

Clone() {

    if [ -d $1 ];
    then
        echo -e "${PURPLE}- ${CYAN}$1 ${GREEN} 🍺 CLONADO    ${NC}"
    else
        echo -ne "${PURPLE}- ${CYAN}$1 ${PURPLE} 🍕 CLONANDO... ${NC}"
        git clone $2 > /dev/null 2>&1

        if [ -d $1 ];
        then
            echo -e "\r${PURPLE}- ${CYAN}$1 ${GREEN} 🍺 CLONADO    ${NC}"
         else
        echo -e "\r${PURPLE}- ${CYAN}$1 ${RED} NO SE PUEDE CLONAR${NC}"
        fi
    fi

}

Wget() {

    if [ -a $1 ];
    then 
         echo -e "${PURPLE}- ${CYAN}$1 ${GREEN} 🍺 DESCARGADO    ${NC}"
    else
        echo -ne "${PURPLE}- ${CYAN}$1 ${PURPLE} 🍕 DESCARGANDO... ${NC}"
        wget $2 > /dev/null 2>&1

        if [ -a $1 ];
        then
            echo -e "\r${PURPLE}- ${CYAN}$1 ${GREEN} 🍺 DESCARGADO    ${NC}"
         else
        echo -e "\r${PURPLE}- ${CYAN}$1 ${RED} NO SE PUEDE DESCARGAR${NC}"
        fi
    fi

}
echo -e "\r${PURPLE}- REPOSITORIES - ${NC}"
#Cracking Wifi
Clone wifimosys https://github.com/Vodker/wifimosys
Clone XAttacker https://github.com/Moham3dRiahi/XAttacker
Clone tilix https://github.com/gnunn1/tilix

# OSINT
Clone sherlock https://github.com/sherlock-project/sherlock.git
Clone skiptracer https://gitlab.com/illwill/skiptracer.git

# Arte
Clone bANSh https://github.com/gabochi/bANSh
Clone ANSIedad https://github.com/gabochi/ANSIedad
Clone rampcode https://github.com/gabochi/rampcode

# Rubber 
Clone USB-Rubber-Ducky https://github.com/hak5darren/USB-Rubber-Ducky

# Others
Clone Kaonashi https://github.com/kaonashi-passwords/Kaonashi
Clone https://www.github.com/landgrey/pydictor
Clone beef https://github.com/beefproject/beef

# Descarga
Wget rockyou.txt https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
Wget dorks.txt https://raw.githubusercontent.com/hackingyseguridad/diccionarios/master/dorks.txt

# Brew installs
echo -e "\r${PURPLE}- INSTALLING - ${NC}"
brew install neofetch
brew install htop
brew install ncdu
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install lsd

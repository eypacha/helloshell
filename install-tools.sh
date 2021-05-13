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

Instala() {

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

Instala sherlock https://github.com/sherlock-project/sherlock.git
Instala skiptracer https://gitlab.com/illwill/skiptracer.git




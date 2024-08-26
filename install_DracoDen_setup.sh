#!/bin/bash

# Definir colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # Sin color

# Mostrar dragón ASCII en verde y mensaje en rojo
echo -e "${GREEN}
              ⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠤⢤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣶⣦⣤⣄⣀⣀⣀⣠⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣤⣤⣤⣤⣠⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣀⣙⢿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠀⣠⠾⠛⠛⠋⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⡀⠀⠀⠀⠀⠀⠀⠀
              ⠀⠀⠀⠈⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀
              ⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣍⠛⢿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣝⣻⣦⡀
              ⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠈⠻⣿⣿⣧⠙⢿⣧⡀⠙⣧⠀⠙⣿⣏⠙⠻⣿⡟⠿⣿⣿⣿⣷
              ⠀⣠⠟⠋⠉⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⢹⣿⣿⣦⠀⠙⢿⣦⡈⠀⠀⠈⠻⠀⠀⠘⡇⠀⠙⣿⠙⣿
              ⠠⠃⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣷⣤⣀⡙⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠏
              ⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣯⡁⠀⠀⠉⠻⢶⣤⣄⣀⣀⣀⣀⠀⠀⠀
${RED}
.______  .______  .______  ._______ ._______  .___     .___ ._____.___ 
:_ _   \ : __   \ :      \ :_.  ___\: .___  \ |   |___ : __|:         |
|   |   ||  \____||   .   ||  : |/\ | :   |  ||   |   || : ||   \  /  |
| . |   ||   :  \ |   :   ||    /  \|     :  ||   :   ||   ||   |\/   |
|. ____/ |   |___\|___|   ||. _____/ \_. ___/  \      ||   ||___| |   |
 :/      |___|        |___| :/         :/       \____/ |___|      |___|
                                                      🀄:by vicenteroa
${NC}"

# Detectar sistema operativo
OS=""
case "$OSTYPE" in
linux-gnu*) OS="Linux 🐧" ;;
darwin*) OS="Mac 🍏" ;;
cygwin* | msys* | win32*) OS="Windows 🪟" ;;
*)
  echo -e "${RED}Sistema operativo no soportado${NC}"
  exit 1
  ;;
esac

echo -e "${CYAN}Detectado sistema operativo: ${OS}${NC}"

# Preguntar si se desea instalar WSL en Windows
if [[ "$OS" == *"Windows"* ]]; then
  read -p "$(echo -e ${YELLOW}"¿Deseas instalar WSL? (s/n): "${NC})" install_wsl
  if [[ "$install_wsl" =~ ^[sS]$ ]]; then
    echo -e "${GREEN}Instalando WSL...${NC}"
    powershell -Command 'wsl --install'
    echo -e "${GREEN}WSL instalado correctamente.${NC}"
    echo -e "${GREEN}Instalando Ubuntu 20.04...${NC}"
    powershell -Command 'wsl --install -d Ubuntu-20.04'
    echo -e "${GREEN}Ubuntu 20.04 instalado correctamente.${NC}"
  else
    echo -e "${BLUE}No se instalará WSL.${NC}"
  fi
fi

# Preguntar si se desea instalar Chocolatey en Windows
if [[ "$OS" == *"Windows"* ]]; then
  read -p "$(echo -e ${YELLOW}"¿Deseas instalar Chocolatey? (s/n): "${NC})" install_chocolatey
  if [[ "$install_chocolatey" =~ ^[sS]$ ]]; then
    echo -e "${GREEN}Instalando Chocolatey...${NC}"
    powershell -Command 'Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString("https://community.chocolatey.org/install.ps1"))'
  else
    echo -e "${BLUE}No se instalará Chocolatey.${NC}"
  fi
fi

# Preguntar si se desea instalar Scoop en Windows
if [[ "$OS" == *"Windows"* ]]; then
  read -p "$(echo -e ${YELLOW}"¿Deseas instalar Scoop? (s/n): "${NC})" install_scoop
  if [[ "$install_scoop" =~ ^[sS]$ ]]; then
    echo -e "${GREEN}Instalando Scoop...${NC}"
    powershell -Command 'Set-ExecutionPolicy Bypass -Scope Process -Force; iex (New-Object System.Net.WebClient).DownloadString("https://get.scoop.sh")'
  else
    echo -e "${BLUE}No se instalará Scoop.${NC}"
  fi
fi

# Preguntar si se desea instalar LazyVim con configuración personalizada
read -p "$(echo -e ${YELLOW}"¿Deseas instalar LazyVim con DracoNvim (configuración personalizada)? (s/n): "${NC})" install_lazynvim
if [[ "$install_lazynvim" =~ ^[sS]$ ]]; then
  echo -e "${GREEN}Instalando LazyVim con DracoNvim...${NC}"
  # Instalar dependencias según el sistema operativo
  if [[ "$OS" == *"Linux"* ]]; then
    sudo apt update && sudo apt install -y gcc fzf fd-find ripgrep
  elif [[ "$OS" == *"Mac"* ]]; then
    brew install gcc fzf fd ripgrep
  elif [[ "$OS" == *"Windows"* ]]; then
    if [[ "$install_scoop" =~ ^[sS]$ ]]; then
      scoop install gcc fzf fd ripgrep
    else
      echo -e "${RED}Por favor, instala Scoop para gestionar las dependencias en Windows.${NC}"
      exit 1
    fi
  fi
  echo -e "${GREEN}LazyVim con DracoNvim instalado correctamente.${NC}"
else
  echo -e "${BLUE}No se instalará LazyVim con DracoNvim.${NC}"
fi

echo -e "${PURPLE}Instalación finalizada.${NC}"

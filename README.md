# NEOVIM / LAZYVIM💤
![wallpaper](https://github.com/vicenteroa/neovim-setup/assets/79950811/6ed7f00a-faf4-4465-b335-1ae3472d9100)

## Instalación

Para instalar LazyVim en Windows, sigue estos pasos:

1. **Configura Chocolatey:** 
Chocolatey es un administrador de paquetes para Windows que facilita la instalación, actualización y gestión de software. Utilizamos Chocolatey para instalar las herramientas necesarias para LazyVim de manera rápida y sencilla.

   - Abre PowerShell como administrador.
   - Ejecuta el siguiente comando:
     ```powershell
     Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
     ```

3. **Instala las herramientas necesarias con Chocolatey:**
   - Ejecuta los siguientes comandos:
     ```powershell
     choco install neovim
      ```
     ```powershell
      choco install ripgrep
     ```
     ```powershell
     choco install fd
      ```
      ```powershell
     choco install lazygit
     ```

4. **Prepara el entorno de Neovim:**
   - Mueve las carpetas necesarias:
     ```powershell
     Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
     Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
     ```
5. **Clona este repositorio:**
 ```powershell
git clone https://github.com/vicenteroa/neovim-setup $env:LOCALAPPDATA\nvim
 ```
6. **Inicia mi setup:**
 ```powershell
nvim
 ```
LISTO👽Disfruta!

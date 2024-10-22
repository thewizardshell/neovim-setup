![504_1x_shots_so](https://github.com/user-attachments/assets/9b653d55-7855-4700-82b9-e26789cab8d1)


## Instalación de mi neovim-setup en Windows
---

> **🔍 Nota:** Si te interesa ver cómo he configurado mis Dotfiles, puedes revisarlos en mi [repositorio de Dotfiles](https://github.com/vicenteroa/Dotfiles). ¡Ahí encontrarás todas las configuraciones y scripts adicionales que utilizo para mi entorno de desarrollo! 🚀

## Antes de comenzar, asegúrate de tener lo siguiente:

- Windows: El sistema operativo donde realizarás la instalación.
- WSL (Windows Subsystem for Linux): Asegúrate de tener WSL habilitado. Para instalarlo, abre PowerShell como administrador y ejecuta el siguiente comando:

- powershell

```powershell
wsl --install
```
Reinicia tu computadora si es necesario.

- Distribución de Linux: Instala una distribución de Linux desde la Microsoft Store (por ejemplo, Ubuntu).

- PowerShell: Preinstalado en Windows, lo necesitarás para ejecutar los comandos.

- Neovim: Asegúrate de tener una versión de Neovim compatible.
  
- Git: Instalado en tu sistema para clonar el repositorio.
  
### 🗂️ Paso 2: Prepara el entorno de Neovim
Asegúrate de que Neovim esté listo:

- Renombra las carpetas anteriores (si existen):
  ```powershell
  Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
  Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
  ```

### 🌀 Paso 4: Clona el repositorio
Clona tu configuración personalizada directamente en el directorio adecuado:

```powershell
git clone https://github.com/vicenteroa/neovim-setup $env:LOCALAPPDATA\nvim
```

### 🚀 Paso 5: ¡Inicia !
Lanza Neovim con tu configuración personalizada:

```powershell
nvim
```

¡Listo! 🏯 ¡Disfruta de tu nuevo entorno de desarrollo con DracoDen!

---

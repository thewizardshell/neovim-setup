![image](https://github.com/user-attachments/assets/8d4b1de9-38e2-4ee0-b125-d0a279f71ce0)

<p align="center">
<a href="https://dotfyle.com/thewizardshell/neovim-setup"><img src="https://dotfyle.com/thewizardshell/neovim-setup/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/thewizardshell/neovim-setup"><img src="https://dotfyle.com/thewizardshell/neovim-setup/badges/plugin-manager?style=flat" /></a>
</p>

# Instalación de mi configuración de Neovim en WSL Ubuntu
Ultima Actualización : 27/07/2025
---
> **🔍 Nota:** Si te interesa ver cómo he configurado mis Dotfiles, puedes revisarlos en mi [repositorio de Dotfiles](https://github.com/vicenteroa/Dotfiles). ¡Ahí encontrarás todas las configuraciones y scripts adicionales que utilizo para mi entorno de desarrollo! 🚀

## Requisitos previos

1. **Windows:** El sistema operativo donde realizarás la instalación.
2. **WSL (Windows Subsystem for Linux):** Asegúrate de tener WSL habilitado.
3. **Distribución de Linux:** Instala una distribución de Linux desde la Microsoft Store (por ejemplo, Ubuntu).
4. **PowerShell:** Preinstalado en Windows, lo necesitarás para ejecutar los comandos.
5. **Neovim:** Asegúrate de tener una versión de Neovim compatible (recomendado: Neovim 0.9 o superior).
6. **Git:** Instalado en tu sistema para clonar el repositorio.
7. **Terminal recomendada:** WezTerm o Alacritty (instalados en el sistema operativo Windows, no en WSL) para una mejor experiencia con Neovim.

## Dependencias necesarias

Asegúrate de instalar estas herramientas con `sudo apt` , `brew` o cualquier herramienta que estes utilizando y te permita instalar los siguente:

- **fzf**: `sudo apt install fzf` o `brew install fzf`
- **fd-find**: `sudo apt install fd-find` o `brew install fd`
- **ripgrep**: `sudo apt install ripgrep` o `brew install ripgrep`
- **bat**: `sudo apt install bat` o `brew install bat`
- **git**: `sudo apt install git` o `brew install git`
- **gcc**: `sudo apt install gcc` o `brew install gcc`
- **curl**: `sudo apt install curl` o `brew install curl`
- **lazygit**: `sudo apt install lazygit` o `brew install lazygit`

## A considerar:

> **⚙️ Nota:** Esta configuración incluye una integración con Obsidian mediante el archivo `obsidian.lua`. Para que funcione correctamente, debes instalar obsidian en tu sistema operativo y cambiar la ruta de las notas en el plugin a la ubicación donde están guardadas tus notas de Obsidian, ya que actualmente está configurada con la ubicación de mis notas personales.
> 
## Pasos de instalación

### 1. Habilitar WSL y configurar Ubuntu

1.1 Abre PowerShell como administrador y ejecuta el siguiente comando para instalar WSL:

```powershell
wsl --install
```

1.2 Reinicia tu computadora si es necesario.

1.3 Abre la Microsoft Store e instala la distribución de Ubuntu.

1.4 Abre Ubuntu desde el menú de inicio para que termine de configurarse. Sigue las instrucciones para crear tu usuario y contraseña de WSL.

### 2. Instalar Neovim en Ubuntu (WSL)

2.1 Una vez en la terminal de Ubuntu, actualiza los paquetes:

```bash
sudo apt update && sudo apt upgrade
```

2.2 Instala Neovim con el siguiente comando:

```bash
sudo apt install neovim
```

### 3. Clonar la configuración de Neovim

3.1 Clona tu configuración de Neovim en el directorio de configuración:

```bash
git clone https://github.com/vicenteroa/neovim-setup ~/.config/nvim
```

3.2 Esto copiará toda la configuración necesaria directamente en el directorio de Neovim.

### 4. Instalar dependencias adicionales (Opcional)

Es posible que necesites algunas dependencias adicionales para ciertas funciones de Neovim, como soporte para lenguajes específicos o plugins.

4.1 Por ejemplo, para soporte de Python, ejecuta:

```bash
sudo apt install python3-pip
pip3 install pynvim
```

4.2 Para soporte de Node.js (requerido por algunos plugins de Neovim):

```bash
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
```

### 5. Probar la instalación

5.1 Abre Neovim desde una terminal como **WezTerm** o **Alacritty** (instaladas en el sistema operativo Windows, no en WSL) para una mejor experiencia:

```bash
nvim
```


5.2 Si encuentras algún problema, revisa los mensajes de error y verifica la configuración en el archivo `init.lua` o `lazy.lua`.

> **⚠️ Importante:** Esta configuración de Neovim debería funcionar en sistemas operativos como Windows (WSL), macOS y distribuciones de Linux (por ejemplo, Arch). Sin embargo, ten en cuenta lo siguiente:
>
> - **Dependencias del sistema:** Algunos plugins o configuraciones pueden requerir herramientas específicas que están disponibles solo en ciertos sistemas. Asegúrate de adaptar los comandos de instalación según el gestor de paquetes de tu sistema (por ejemplo, `brew` en macOS o `pacman` en Arch).
> - **Ruta de configuración:** La configuración debe estar ubicada en `~/.config/nvim` para ser reconocida por Neovim en cualquier sistema operativo.
---

### Fondo de pantalla recomendado

🎨 Recomendación de personalización:** Para complementar el estilo de tu configuración de Neovim, puedes usar el fondo de pantalla animado que tengo en mi escritorio mediante **Wallpaper Engine**. Esto ayuda a darle un toque visual atractivo a tu entorno de desarrollo.

#### Instrucciones para aplicar el fondo de pantalla

1. Asegúrate de tener **Wallpaper Engine** instalado en tu PC (disponible en Steam).
2. Puedes encontrar el fondo de pantalla que utilizo [en este enlace de Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3309706653).
![image](https://github.com/user-attachments/assets/83713c7c-c621-4093-82ff-202e58a49c1b)

4. Una vez en Wallpaper Engine:
   - Abre el enlace y selecciona "Suscribirse" para añadir el fondo a tu colección.
   - Abre Wallpaper Engine y selecciona el fondo desde tu biblioteca para aplicarlo.

> **Nota:** Este fondo es solo una recomendación para complementar la configuración de Neovim en WSL y no es un requisito para su funcionamiento.

---

### Multiplexor de terminales: Zellij

> **💡 Tip de Productividad:** Si deseas una experiencia más completa en el flujo de trabajo, considera instalar el multiplexor de terminales **Zellij**. Este te permite trabajar en múltiples paneles dentro de una misma ventana, lo cual facilita organizar tareas simultáneamente.

#### Instalación de Zellij

1. **En Ubuntu (WSL):**
   ```bash
   sudo apt install zellij
   ```

2. **En Arch Linux:**
   ```bash
   sudo pacman -S zellij
   ```

3. **En macOS (usando Homebrew):**
   ```bash
   brew install zellij
   ```

#### Flujo de trabajo sugerido

Aquí tienes el flujo de trabajo que suelo emplear con Zellij:

- **Panel Izquierdo:** Ventana para el desarrollo principal.
- **Panel Superior Derecho:** Área dedicada a testing.
- **Panel Inferior Derecho:** Espacio para tomar notas en Obsidian.
- **Panel Flotante**: Espacio para ejecutar modo desarrollo o producción

### Ejemplo (con panel flotante)
![image](https://github.com/user-attachments/assets/249df7a1-11bf-4b01-aa9f-3fabd087a761)


### Ejemplo
![image](https://github.com/user-attachments/assets/c7bdd09c-275f-4b57-92b6-534e742e9420)



> Esta organización me permite trabajar de forma organizada y tener fácil acceso a múltiples herramientas y tareas al mismo tiempo.

Para más detalles sobre cómo configuro mis herramientas, puedes revisar mis [Dotfiles aquí](https://github.com/vicenteroa/Dotfiles).

---


¡Listo! 🏯 ¡Disfruta de tu nuevo entorno de desarrollo y la potencia de Neovim en WSL Ubuntu!

![504_1x_shots_so](https://github.com/user-attachments/assets/9b653d55-7855-4700-82b9-e26789cab8d1)

---

# Instalación de mi configuración de Neovim en WSL Ubuntu

> **🔍 Nota:** Si te interesa ver cómo he configurado mis Dotfiles, puedes revisarlos en mi [repositorio de Dotfiles](https://github.com/vicenteroa/Dotfiles). ¡Ahí encontrarás todas las configuraciones y scripts adicionales que utilizo para mi entorno de desarrollo! 🚀

## Requisitos previos

1. **Windows:** El sistema operativo donde realizarás la instalación.
2. **WSL (Windows Subsystem for Linux):** Asegúrate de tener WSL habilitado.
3. **Distribución de Linux:** Instala una distribución de Linux desde la Microsoft Store (por ejemplo, Ubuntu).
4. **PowerShell:** Preinstalado en Windows, lo necesitarás para ejecutar los comandos.
5. **Neovim:** Asegúrate de tener una versión de Neovim compatible (recomendado: Neovim 0.8 o superior).
6. **Git:** Instalado en tu sistema para clonar el repositorio.
7. **Terminal recomendada:** WezTerm o Alacritty (instalados en el sistema operativo Windows, no en WSL) para una mejor experiencia con Neovim.

## A considerar:

> **⚙️ Nota:** Esta configuración incluye una integración con Obsidian mediante el archivo `obsidian.lua`. Para que funcione correctamente, debes instalar obsidian en tu sistema operativo y cambiar la ruta de las notas en el plugin a la ubicación donde están guardadas tus notas de Obsidian, ya que actualmente está configurada con la ubicación de mis notas personales.
> 

> **⚠️ Importante:** Esta configuración de Neovim debería funcionar en sistemas operativos como Windows (WSL), macOS y distribuciones de Linux (por ejemplo, Arch). Sin embargo, ten en cuenta lo siguiente:
>
> - **Dependencias del sistema:** Algunos plugins o configuraciones pueden requerir herramientas específicas que están disponibles solo en ciertos sistemas. Asegúrate de adaptar los comandos de instalación según el gestor de paquetes de tu sistema (por ejemplo, `brew` en macOS o `pacman` en Arch).
> - **Ruta de configuración:** La configuración debe estar ubicada en `~/.config/nvim` para ser reconocida por Neovim en cualquier sistema operativo.


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

---

¡Listo! 🏯 ¡Disfruta de tu nuevo entorno de desarrollo y la potencia de Neovim en WSL Ubuntu!

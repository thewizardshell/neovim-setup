![504_1x_shots_so](https://github.com/user-attachments/assets/9b653d55-7855-4700-82b9-e26789cab8d1)

<p align="center">
  <a href="https://dotfyle.com/vicenteroa/neovim-setup">
    <img src="https://dotfyle.com/vicenteroa/neovim-setup/badges/plugins?style=flat" />
  </a>
  <a href="https://dotfyle.com/vicenteroa/neovim-setup">
    <img src="https://dotfyle.com/vicenteroa/neovim-setup/badges/plugin-manager?style=flat" />
  </a>
  <a href="https://github.com/vicenteroa/Dotfiles">
    <img src="https://img.shields.io/badge/Dotfiles-Vicente%20Roa-blue?style=flat-square&logo=neovim&logoColor=blue" />
  </a>
</p>

## Install Instructions

> Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:vicenteroa/neovim-setup ~/.config/vicenteroa/neovim-setup
```

Open Neovim with this config:

```sh
NVIM_APPNAME=vicenteroa/neovim-setup/ nvim
```

## Plugins

### ai

- [CopilotC-Nvim/CopilotChat.nvim](https://dotfyle.com/plugins/CopilotC-Nvim/CopilotChat.nvim)
- [supermaven-inc/supermaven-nvim](https://dotfyle.com/plugins/supermaven-inc/supermaven-nvim)

### colorscheme

- [olimorris/onedarkpro.nvim](https://dotfyle.com/plugins/olimorris/onedarkpro.nvim)
- [rose-pine/neovim](https://dotfyle.com/plugins/rose-pine/neovim)
- [rebelot/kanagawa.nvim](https://dotfyle.com/plugins/rebelot/kanagawa.nvim)

### completion

- [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)

### diagnostics

- [folke/trouble.nvim](https://dotfyle.com/plugins/folke/trouble.nvim)

### editing-support

- [folke/snacks.nvim](https://dotfyle.com/plugins/folke/snacks.nvim)

### file-explorer

- [stevearc/oil.nvim](https://dotfyle.com/plugins/stevearc/oil.nvim)

### fuzzy-finder

- [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)

### icon

- [nvim-tree/nvim-web-devicons](https://dotfyle.com/plugins/nvim-tree/nvim-web-devicons)

### keybinding

- [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim)

### lsp

- [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
- [jose-elias-alvarez/typescript.nvim](https://dotfyle.com/plugins/jose-elias-alvarez/typescript.nvim)

### lsp-installer

- [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)

### lua-colorscheme

- [ellisonleao/gruvbox.nvim](https://dotfyle.com/plugins/ellisonleao/gruvbox.nvim)

### markdown-and-latex

- [iamcco/markdown-preview.nvim](https://dotfyle.com/plugins/iamcco/markdown-preview.nvim)

### note-taking

- [epwalsh/obsidian.nvim](https://dotfyle.com/plugins/epwalsh/obsidian.nvim)

### nvim-dev

- [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)

### plugin-manager

- [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)

### preconfigured

- [LazyVim/LazyVim](https://dotfyle.com/plugins/LazyVim/LazyVim)

### search

- [chrisgrieser/nvim-rip-substitute](https://dotfyle.com/plugins/chrisgrieser/nvim-rip-substitute)

### statusline

- [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim)

### syntax

- [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)

### test

- [nvim-neotest/neotest](https://dotfyle.com/plugins/nvim-neotest/neotest)

## Language Servers

- eslint
- html
- lua_ls
- tsserver

---

## Required Dependencies

Make sure to install these tools using `sudo apt`, `brew`, or any tool you're using that allows you to install the following:

- **fzf**: `sudo apt install fzf` or `brew install fzf`
- **fd-find**: `sudo apt install fd-find` or `brew install fd`
- **ripgrep**: `sudo apt install ripgrep` or `brew install ripgrep`
- **bat**: `sudo apt install bat` or `brew install bat`
- **git**: `sudo apt install git` or `brew install git`
- **gcc**: `sudo apt install gcc` or `brew install gcc`
- **curl**: `sudo apt install curl` or `brew install curl`
- **lazygit**: `sudo apt install lazygit` or `brew install lazygit`

## Considerations

> **⚙️ Note:** This setup includes an integration with Obsidian via the `obsidian.lua` file. For it to work properly, you need to install Obsidian on your operating system and change the note path in the plugin to where your Obsidian notes are stored, as it is currently set to the location of my personal notes.

## Installation Steps

### 1. Enable WSL and Set Up Ubuntu

1.1 Open PowerShell as Administrator and run the following command to install WSL:

```powershell
wsl --install
```

1.2 Restart your computer if needed.

1.3 Open the Microsoft Store and install the Ubuntu distribution.

1.4 Open Ubuntu from the Start menu to finish setting it up. Follow the instructions to create your WSL username and password.

### 2. Install Neovim on Ubuntu (WSL)

2.1 Once in the Ubuntu terminal, update the packages:

```bash
sudo apt update && sudo apt upgrade
```

2.2 Install Neovim with the following command:

```bash
sudo apt install neovim
```

### 3. Clone the Neovim Configuration

3.1 Clone your Neovim configuration into the configuration directory:

```bash
git clone https://github.com/vicenteroa/neovim-setup ~/.config/nvim
```

3.2 This will copy all the necessary configuration directly into the Neovim directory.

### 4. Install Additional Dependencies (Optional)

You may need additional dependencies for certain Neovim features, like support for specific languages or plugins.

4.1 For Python support, run:

```bash
sudo apt install python3-pip
pip3 install pynvim
```

4.2 For Node.js support (required by some Neovim plugins):

```bash
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
```

### 5. Test the Installation

5.1 Open Neovim from a terminal like **WezTerm** or **Alacritty** (installed on Windows, not WSL) for a better experience:

```bash
nvim
```

5.2 If you encounter any issues, check the error messages and verify the configuration in the `init.lua` or `lazy.lua` file.

> **⚠️ Important:** This Neovim setup should work on operating systems such as Windows (WSL), macOS, and Linux distributions (e.g., Arch). However, note the following:
>
> - **System Dependencies:** Some plugins or configurations may require specific tools that are only available on certain systems. Be sure to adapt the installation commands according to your system's package manager (e.g., `brew` on macOS or `pacman` on Arch).
> - **Configuration Path:** The configuration must be located in `~/.config/nvim` to be recognized by Neovim on any operating system.

---

### Recommended Wallpaper

🎨 **Customization Tip:** To complement the style of your Neovim setup, you can use the animated wallpaper I have on my desktop via **Wallpaper Engine**. This helps to give your development environment an attractive visual touch.

#### Instructions to Apply the Wallpaper

1. Make sure you have **Wallpaper Engine** installed on your PC (available on Steam).
2. You can find the wallpaper I use [at this Steam Workshop link](https://steamcommunity.com/sharedfiles/filedetails/?id=3309706653).
   ![image](https://github.com/user-attachments/assets/83713c7c-c621-4093-82ff-202e58a49c1b)

3. Once in Wallpaper Engine:
   - Open the link and click "Subscribe" to add the wallpaper to your collection.
   - Open Wallpaper Engine and select the wallpaper from your library to apply it.

> **Note:** This wallpaper is just a recommendation to complement the Neovim setup on WSL and is not a requirement for its functionality.

---

### Terminal Multiplexer: Zellij

> **💡 Productivity Tip:** If you want a more complete experience in your workflow, consider installing the **Zellij** terminal multiplexer. It allows you to work in multiple panes within a single window, which makes it easier to organize tasks simultaneously.

#### Installing Zellij

1. **On Ubuntu (WSL):**

   ```bash
   sudo apt install zellij
   ```

2. **On Arch Linux:**

   ```bash
   sudo pacman -S zellij
   ```

3. **On macOS (using Homebrew):**

   ```bash
   brew install zellij
   ```

#### Suggested Workflow

Here’s the workflow I usually use with Zellij:

- **Left Panel:** Main development window.
- **Upper Right Panel:** Area for testing.
- **Lower Right Panel:** Space for taking notes in Obsidian.
- **Floating Panel:** Space for running in development or production mode.

### Example (with floating panel)

![image](https://github.com/user-attachments/assets/249df7a1-11bf-4b01-aa9f-3fabd087a761)

### Example

![image](https://github.com/user-attachments/assets/c7bdd09c-275f-4b57-92b6-534e742e9420)

> This organization allows me to work in an organized way and have easy access to multiple tools and tasks at the same time.

For more details on how I configure my tools, you can check out my [Dotfiles here](https://github.com/vicenteroa/Dotfiles).

---

Enjoy your new development environment and the power of Neovim on WSL Ubuntu! 🏯

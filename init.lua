-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.fileformat = "unix"

if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font Mono:h14"
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_underline_automatic_scaling = true
end

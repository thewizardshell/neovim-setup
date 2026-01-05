return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Opciones de configuración antes de cargar el tema
      vim.g.nord_contrast = true -- Realza las barras laterales y menús emergentes
      vim.g.nord_disable_background = false
      vim.g.nord_borders = false -- Desactiva bordes entre ventanas divididas
      vim.g.nord_bold = true -- Desactiva negrita

      -- require("nord").set()
    end,
  },
}

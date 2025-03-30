return {
  "crnvl96/lazydocker.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("lazydocker").setup({
      -- Configuración de la ventana flotante
      floating_window = {
        scaling_factor = 0.9, -- Tamaño de la ventana (90%)
        title = " 🐳 LazyDocker ", -- Título con logo de Docker
        title_pos = "center", -- Posición del título
      },
    })

    -- Mapeo personalizado
    vim.keymap.set("n", "<leader>D", "<cmd>LazyDocker<CR>", {
      desc = "Toggle LazyDocker",
      noremap = true,
      silent = true,
    })
  end,
}

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        extensions = {
          fzf = {
            fuzzy = true, -- Habilitar búsqueda difusa
            override_generic_sorter = true, -- Sobrescribir el sorter genérico
            override_file_sorter = true, -- Sobrescribir el sorter de archivos
            case_mode = "smart_case", -- Búsqueda con modo de caso inteligente
          },
        },
      })
      telescope.load_extension("fzf")
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
}

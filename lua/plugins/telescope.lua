return {
  "nvim-telescope/telescope.nvim",
  requires = {
    { "nvim-lua/plenary.nvim" }, -- Dependencia requerida por Telescope
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make", -- Asegura que la extensión se compile
    },
  },

  config = function()
    local telescope = require("telescope")

    -- Configuración básica de Telescope
    telescope.setup({
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
        prompt_prefix = "🔍 ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            mirror = false,
            preview_width = 0.5,
            prompt_position = "top",
          },
          vertical = {
            mirror = false,
          },
          width = 0.75,
          height = 0.85,
          preview_cutoff = 120,
        },
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        path_display = { "truncate" },
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        use_less = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      },

      extensions = {
        fzf = {
          fuzzy = true, -- Permite coincidencias difusas
          override_generic_sorter = false, -- No sobrecarga el clasificador genérico
          override_file_sorter = true, -- Sobrescribe el clasificador de archivos
          case_mode = "smart_case", -- Opciones de modo de mayúsculas/minúsculas
        },
      },
    })

    -- Cargar la extensión fzf
    telescope.load_extension("fzf")
  end,
}

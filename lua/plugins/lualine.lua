return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local custom_theme = require("lualine.themes.auto")

      -- Define colors for different modes
      -- custom_theme.normal.a.bg = "#972615" -- Rojo para modo normal
      -- custom_theme.insert.a.bg = "#a3be8c" -- Verde para modo insertar
      -- custom_theme.visual.a.bg = "#5e81ac" -- Azul para modo visual
      --
      -- Verifica si 'replace' existe antes de asignar un color
      if custom_theme.replace and custom_theme.replace.a then
        custom_theme.replace.a.bg = "#ebcb8b" -- Amarillo para modo reemplazar
      end

      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = custom_theme,
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          disabled_filetypes = { "alpha", "dashboard" },
          always_divide_middle = true,
          globalstatus = true,
        },
        sections = {
          lualine_a = { "mode", "filetype", "-- New Components --", { "lua_ls", icon = "" } }, -- Added Lua language and icon
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = {
            { "filename", path = 1 },
            "-- New Components --",
            { "stylua", icon = "" },
            { "TS", icon = "" },
          }, -- Added StyLua and TS indicator with icons
          lualine_x = { "encoding", "fileformat" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = { "fugitive", "nvim-tree" },
      })
    end,
  },
}

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local colors = {
        blue = "#81A1C1",
        green = "#A3BE8C",
        purple = "#B48EAD",
        red = "#BF616A",
        yellow = "#EBCB8B",
        fg = "#D8DEE9",
        bg = "#2E3440",
        gray = "#4C566A",
      }

      local custom_theme = {
        normal = {
          a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
          b = { bg = colors.gray, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        insert = {
          a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        },
        visual = {
          a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
        },
        replace = {
          a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        },
        command = {
          a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        },
        inactive = {
          a = { bg = colors.bg, fg = colors.gray },
          b = { bg = colors.bg, fg = colors.gray },
          c = { bg = colors.bg, fg = colors.gray },
        },
      }

      require("lualine").setup({
        options = {
          theme = custom_theme,
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          disabled_filetypes = { "alpha", "dashboard", "NvimTree" },
          globalstatus = true,
        },
        sections = {
          lualine_a = {
            {
              "mode",
              separator = { left = "", right = "" },
              padding = { left = 1, right = 1 },
            },
          },
          lualine_b = {
            "branch",
            {
              "diff",
              symbols = { added = " ", modified = " ", removed = " " },
              colored = true,
            },
          },
          lualine_c = {
            {
              "filename",
              path = 1,
              symbols = {
                modified = "  ",
                readonly = "  ",
                unnamed = "  ",
              },
            },
          },
          lualine_x = {
            {
              "diagnostics",
              sources = { "nvim_diagnostic" },
              symbols = {
                error = " ",
                warn = " ",
                info = " ",
                hint = " ",
              },
              colored = true,
              update_in_insert = true,
            },
            { "filetype", icon_only = true, padding = { left = 1 } },
          },
          lualine_y = { "progress" },
          lualine_z = {
            {
              "location",
              separator = { left = "", right = "" },
              padding = { left = 1, right = 1 },
            },
          },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
      })
    end,
  },
}

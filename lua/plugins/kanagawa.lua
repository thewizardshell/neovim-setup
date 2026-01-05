return {
  -- Kanagawa Theme
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        compile = true,
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        -- transparent = true, -- Habilita la transparencia en el tema
        dimInactive = true,
        terminalColors = true,
        overrides = function(colors)
          return {
            Normal = { bg = "NONE" },
            NormalNC = { bg = "NONE" },
            NormalFloat = { bg = "NONE" },
            SignColumn = { bg = "NONE" },
            VertSplit = { bg = "NONE" },
            EndOfBuffer = { bg = "NONE" },
            LineNr = { bg = "NONE" },
            CursorLineNr = { bg = "NONE" },
            Pmenu = { bg = "NONE" },
            PmenuSel = { bg = "NONE" },
          }
        end,
        theme = "wave",
        background = { dark = "dragon", light = "dragon" },
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },

  -- Transparent.nvim para reforzar la transparencia
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        enable = true,
        extra_groups = { -- Grupos que se vuelven transparentes
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLineNr",
          "EndOfBuffer",
          "Pmenu",
          "PmenuSel",
          "NormalFloat",
          "FloatBorder",
        },
        exclude = {}, -- No excluye ningún grupo
      })
      vim.cmd("TransparentEnable") -- Activa la transparencia
    end,
  },
}

return {
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        enable = true, -- Habilita la transparencia
        extra_groups = { -- Grupos adicionales que se vuelven transparentes
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
        },
        exclude = {}, -- Grupos que no quieres que sean transparentes
      })
      vim.cmd("TransparentEnable") -- Activa la transparencia
    end,
  },
  { "rktjmp/lush.nvim" }, -- Dependencia necesaria para Sakura
  {
    "anAcc22/sakura.nvim",
    config = function()
      vim.opt.background = "dark" -- Cambia el fondo a claro
      vim.cmd.colorscheme("sakura")
    end,
  },
}

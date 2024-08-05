return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      compile = false, -- Habilita la compilación del esquema de colores
      undercurl = true, -- Habilita undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- No establecer color de fondo
      dimInactive = false, -- Atenuar ventana inactiva `:h hl-NormalNC`
      terminalColors = false, -- Definir vim.g.terminal_color_{0,17}
      colors = { -- Agregar/modificar colores de tema y paleta
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- Agregar/modificar destacados
        return {}
      end,
      theme = "dragon", -- Cargar tema "wave" cuando la opción 'background' no está configurada
      background = { -- Mapear el valor de la opción 'background' a un tema
        dark = "dragon", -- Intenta "dragon"!
        light = "lotus",
      },
    })
    vim.cmd("colorscheme kanagawa")
  end,
}

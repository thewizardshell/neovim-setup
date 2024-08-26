return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true, -- Activa la transparencia
      terminal_colors = true, -- Configura los colores del terminal en Neovim
      styles = {
        comments = { italic = true }, -- Comentarios en cursiva
        keywords = { italic = true }, -- Palabras clave en cursiva
        functions = {}, -- Estilo para funciones
        variables = {}, -- Estilo para variables
        sidebars = "dark", -- Fondo oscuro para ventanas tipo barra lateral
        floats = "dark", -- Fondo oscuro para ventanas flotantes
      },
      sidebars = { "qf", "help" }, -- Aplica el estilo oscuro a ventanas específicas
      day_brightness = 0.3, -- Ajusta el brillo del estilo Day
      hide_inactive_statusline = false, -- Oculta la línea de estado inactiva
      dim_inactive = false, -- Atenúa las ventanas inactivas
      lualine_bold = false, -- Hace que los encabezados de las secciones en lualine sean en negrita

      on_colors = function(colors)
        colors.hint = colors.orange
        colors.error = "FF0000"
      end, -- Sobrescribe colores específicos si es necesario
      on_highlights = function(highlights, colors) end, -- Sobrescribe destacados específicos si es necesario
    },
    config = function()
      vim.cmd([[colorscheme solarized-osaka]])
    end,
  },
}

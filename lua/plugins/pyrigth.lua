return {
  -- Configuración de Pyright para LazyVim
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          before_init = function(_, config)
            local cwd = vim.fn.getcwd()
            local paths = {
              cwd .. "/venv/Scripts/python.exe",
              cwd .. "/.venv/Scripts/python.exe",
            }
            
            for _, path in ipairs(paths) do
              if vim.fn.filereadable(path) == 1 then
                config.settings.python.pythonPath = path
                return
              end
            end
          end,
          settings = {
            python = {
              pythonPath = "python",
            },
          },
        },
      },
    },
  },
}

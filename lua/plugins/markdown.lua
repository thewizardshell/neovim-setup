return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  -- build = function()
  --   -- Asegúrate de tener `npm` o `yarn` en el PATH
  --   vim.fn.system("cd ~/.local/share/nvim/lazy/markdown-preview.nvim && npm install")
  -- end,
  config = function()
    vim.g.mkdp_auto_start = 1 -- Inicia automáticamente la previsualización al abrir un archivo .md
    vim.g.mkdp_auto_close = 1 -- Cierra la previsualización al salir de un buffer .md
    vim.g.mkdp_refresh_slow = 0 -- Refresca rápidamente al guardar el archivo
  end,
}

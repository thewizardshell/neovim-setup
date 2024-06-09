return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- TODO Extend
      servers = { eslint = {} },
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client, bufnr)
            -- vim.api.nvim_create_autocmd("BufWritePre", {
            --   buffer = bufnr,
            --   command = "EslintFixAll",
            -- })
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}

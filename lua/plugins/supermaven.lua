return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-l>",
          clear_suggestions = "<C-g>",
          accept_word = "<C-j>",
        },
        -- disable_inline_completion = true to use with cmp and all supermaven as cp source
        disable_inline_completion = false,
        disable_keymaps = false,
      })
    end,
  },
}

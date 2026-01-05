-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- keymaps.lua
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- OIL
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- vim.keymap.set("n", "<leader>h", "<cmd>Huez<CR>", options)

-- Obsidian
-- vim.keymap.set(
--   "n",
--   "<leader>oc",
--   "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>",
--   { desc = "Obsidian Check Checkbox" }
-- )
-- vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
-- vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
-- vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
-- vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
-- vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
-- vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
-- vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })
--
-- Minty
vim.keymap.set("n", "<leader>cps", "<cmd>Shades<CR>", { desc = "Aplicar Shades" })
vim.keymap.set("n", "<leader>cph", "<cmd>Huefy<CR>", { desc = "Aplicar Huefy" })

-- CodeCompanion Keymaps
vim.keymap.set({ "n", "v" }, "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "AI Toggle [C]hat" })
vim.keymap.set({ "n", "v" }, "<leader>an", "<cmd>CodeCompanionChat<cr>", { desc = "AI [N]ew Chat" })
vim.keymap.set({ "n", "v" }, "<leader>aa", "<cmd>CodeCompanionActions<cr>", { desc = "AI [A]ction" })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<CR>", { desc = "AI [A]dd to Chat" })
vim.keymap.set("v", "<leader>ae", "<cmd>CodeCompanion /explain<cr>", { desc = "AI [E]xplain" })

-- LazyDocker
-- vim.keymap.set("n", "<leader>D", "<cmd>LazyDocker<CR>", { desc = "Toggle LazyDocker", noremap = true, silent = true, })

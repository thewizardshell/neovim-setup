return {
  require("neo-tree").setup({
    filesystem = {
      filtered_items = {
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_by_name = {
          "node_modules",
          ".git",
          "__pycache__",
          ".mypy_cache",
        },
      },
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
          ["<space>"] = "toggle_node",
          ["<2-LeftMouse>"] = "open",
          ["<cr>"] = "open",
          ["S"] = "system_open",
          ["s"] = "system_open",
          ["R"] = "rename",
          ["r"] = "rename",
          ["d"] = "delete",
          ["x"] = "cut",
          ["p"] = "paste",
          ["y"] = "copy",
          ["Y"] = "copy.node",
          ["X"] = "cut.node",
          ["c"] = "copy.absolute_path",
          ["C"] = "copy.relative_path",
          ["?"] = "show_help",
          ["E"] = "show_entry_menu",
        },
      },
    },
  }),
}

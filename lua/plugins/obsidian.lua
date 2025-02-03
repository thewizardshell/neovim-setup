return {
  {
    -- Plugin: obsidian.nvim
    -- URL: https://github.com/epwalsh/obsidian.nvim
    -- Description: A Neovim plugin for integrating with Obsidian, a powerful knowledge base that works on top of a local folder of plain text Markdown files.
    "epwalsh/obsidian.nvim",
    version = "*", -- Use the latest release instead of the latest commit (recommended)

    dependencies = {
      -- Dependency: plenary.nvim
      -- URL: https://github.com/nvim-lua/plenary.nvim
      -- Description: A Lua utility library for Neovim.
      "nvim-lua/plenary.nvim",
    },

    opts = {
      -- Define workspaces for Obsidian
      workspaces = {
        {
          name = "vctroa", -- Name of the workspace
          path = "/mnt/c/Users/vctro/OneDrive/Documentos/Notas/", -- Path to the notes directory
        },
      },

      -- Completion settings
      completion = {
        nvim_cmp = true, -- Enable completion using nvim-cmp
        min_chars = 2, -- Minimum characters to trigger completion
      },

      notes_subdir = "notes", -- Subdirectory for notes
      new_notes_location = "notes", -- Location for new notes

      -- Settings for attachments
      attachments = {
        img_folder = "files", -- Folder for image attachments
      },

      -- Settings for daily notes
      daily_notes = {
        template = "note", -- Template for daily notes
      },

      -- Key mappings for Obsidian commands
      mappings = {
        ["<leader>of"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        ["<leader>od"] = {
          action = function()
            return require("obsidian").util.toggle_checkbox()
          end,
          opts = { buffer = true },
        },
        ["<leader>onn"] = {
          action = function()
            return require("obsidian").commands.new_note("Newsletter-Issue")
          end,
          opts = { buffer = true },
        },
        ["<leader>ont"] = {
          action = function()
            return require("obsidian").util.insert_template("Newsletter-Issue")
          end,
          opts = { buffer = true },
        },
      },

      -- Function to generate frontmatter for notes
      note_frontmatter_func = function(note)
        local out = { id = note.id, aliases = note.aliases, tags = note.tags }

        if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
          for k, v in pairs(note.metadata) do
            out[k] = v
          end
        end
        return out
      end,

      -- Function to generate note IDs
      note_id_func = function(title)
        local suffix = ""
        if title ~= nil then
          suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        else
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90))
          end
        end
        return tostring(os.time()) .. "-" .. suffix
      end,

      -- Settings for templates
      templates = {
        subdir = "Templates", -- Subdirectory for templates
        date_format = "%Y-%m-%d-%a", -- Date format for templates
        gtime_format = "%H:%M", -- Time format for templates
        tags = "", -- Default tags for templates
      },
    },

    config = function(_, opts)
      require("obsidian").setup(opts)

      local cmp = require("cmp")
      cmp.register_source("obsidian", require("cmp_obsidian").new())
      cmp.register_source("obsidian_new", require("cmp_obsidian_new").new())
      cmp.register_source("obsidian_tags", require("cmp_obsidian_tags").new())
    end,
  },

  {
    "saghen/blink.cmp",
    dependencies = { "saghen/blink.compat" },
    opts = {
      sources = {
        default = { "obsidian", "obsidian_new", "obsidian_tags" },
        providers = {
          obsidian = {
            name = "obsidian",
            module = "blink.compat.source",
          },
          obsidian_new = {
            name = "obsidian_new",
            module = "blink.compat.source",
          },
          obsidian_tags = {
            name = "obsidian_tags",
            module = "blink.compat.source",
          },
        },
      },
    },
  },
}

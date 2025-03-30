return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
    provider = "copilot", -- Recommend using Claude
    copilot = {
      model = "claude-3.5-sonnet", -- o1-preview | o1-mini | claude-3.5-sonnet
    },
    auto_suggestions_provider = "copilot", -- Since auto-suggestions are a high-frequency operation and therefore expensive, it is recommended to specify an inexpensive provider or even a free provider: copilot
    behaviour = {
      auto_suggestions = false, -- Experimental stage
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false,
    },
    mappings = {
      --- @class AvanteConflictMappings
      diff = {
        ours = "co",
        theirs = "ct",
        all_theirs = "ca",
        both = "cb",
        cursor = "cc",
        next = "]x",
        prev = "[x",
      },
      suggestion = {
        accept = "<M-l>",
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
      jump = {
        next = "]]",
        prev = "[[",
      },
      submit = {
        normal = "<CR>",
        insert = "<C-s>",
      },
      sidebar = {
        apply_all = "A",
        apply_cursor = "a",
        switch_windows = "<Tab>",
        reverse_switch_windows = "<S-Tab>",
      },
    },
    hints = { enabled = false },
    windows = {
      ---@type "right" | "left" | "top" | "bottom"
      position = "left", -- the position of the sidebar
      wrap = true, -- similar to vim.o.wrap
      width = 30, -- default % based on available width
      sidebar_header = {
        enabled = true, -- true, false to enable/disable the header
        align = "center", -- left, center, right for title
        rounded = false,
      },
      input = {
        prefix = "> ",
        height = 8, -- Height of the input window in vertical layout
      },
      edit = {
        start_insert = true, -- Start insert mode when opening the edit window
      },
      ask = {
        floating = false, -- Open the 'AvanteAsk' prompt in a floating window
        start_insert = true, -- Start insert mode when opening the ask window
        ---@type "ours" | "theirs"
        focus_on_apply = "ours", -- which diff to focus after applying
      },
    },
    highlights = {
      ---@type AvanteConflictHighlights
      diff = {
        current = "DiffText",
        incoming = "DiffAdd",
      },
    },
    --- @class AvanteConflictUserConfig
    diff = {
      autojump = true,
      ---@type string | fun(): any
      list_opener = "copen",
      --- Override the 'timeoutlen' setting while hovering over a diff (see :help timeoutlen).
      --- Helps to avoid entering operator-pending mode with diff mappings starting with `c`.
      --- Disable by setting to -1.
      override_timeoutlen = 500,
    },
    system_prompt = "Este GPT es un clon de un arquitecto frontend altamente experimentado, especializado en Angular y React, con un enfoque profundo en arquitecturas limpias, arquitectura hexagonal y separación de lógica en aplicaciones escalables. Su enfoque es técnico pero práctico, brindando explicaciones claras y aplicables, siempre con ejemplos útiles para desarrolladores intermedios y avanzados. Habla de manera profesional y relajada, con un toque de humor inteligente. Evita formalidades excesivas y utiliza un lenguaje directo y técnico cuando es necesario, pero siempre accesible. Sus áreas de especialización incluyen: - Desarrollo frontend con Angular, React y gestión avanzada de estado (Redux, Signals). - Arquitectura de software con un enfoque en Clean Architecture, Hexagonal Architecture y Scream Architecture. - Implementación de buenas prácticas en TypeScript, testing unitario y end-to-end. - Pasión por la modularización, atomic design y el patrón contenedor-presentacional. - Herramientas de productividad como LazyVim, Tmux, Zellij. - Mentoría y enseñanza de conceptos avanzados de manera clara y efectiva. A la hora de explicar un concepto técnico: 1. Explica el problema que el usuario enfrenta. 2. Propone una solución clara y directa, con ejemplos prácticos si es necesario. 3. Menciona herramientas o recursos que pueden ser útiles. Si el tema es complejo, utiliza analogías prácticas, especialmente aquellas relacionadas con la construcción y la arquitectura. Si menciona una herramienta o concepto, explica su utilidad y cómo aplicarlo de manera efectiva sin redundar",
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}

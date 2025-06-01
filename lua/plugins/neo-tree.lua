return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["<leader>e"] = "toggle_node", -- Пример маппинга для открытия/закрытия узлов
        },
      },
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    default_component_configs = {
      icon = {
        folder_closed = "", -- Иконка для закрытой папки
        folder_open = "", -- Иконка для открытой папки
        folder_empty = "󰜌", -- Иконка для пустой папки
        default = "󰈔", -- Иконка по умолчанию для файлов
      },
      git_status = {
        symbols = {
          added = "✚",
          modified = "✹",
          deleted = "✖",
          renamed = "➜",
          untracked = "★",
          ignored = "◌",
          unstaged = "✗",
          staged = "✓",
          conflict = "",
        },
      },
    },
    filetypes = {
      -- Иконки для определенных типов файлов
      ["javascript"] = "󰌞",
      ["typescript"] = "󰛦",
      ["python"] = "󰌠",
      ["lua"] = "󰢱",
      ["json"] = "󰘦",
      ["html"] = "󰌝",
      ["css"] = "󰌛",
      ["markdown"] = "󰍔",
      ["gitignore"] = "󰊢",
    },
  },
}

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"

    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Форматирование через Prettier
      null_ls.builtins.formatting.prettier.with {
        filetypes = { "html", "javascript", "typescript", "css", "scss", "less", "json" },
        extra_args = {
          "--single-quote",
          "true",
          "--jsx-single-quote",
          "true",
          "--print-width",
          "100",
          "--trailing-comma",
          "all",
          "--semi",
          "false", -- Исправлено: Airbnb не использует точки с запятой
          "--tab-width",
          "2",
          "--html-whitespace-sensitivity",
          "ignore",
          "--config-precedence",
          "cli-override",
        },
        condition = function()
          local has_prettier = vim.fn.executable "prettier" == 1
          if not has_prettier then
            vim.notify(
              "Prettier not found. Install with `npm install -g prettier` or `:MasonInstall prettier`.",
              vim.log.levels.ERROR
            )
          end
          return has_prettier
        end,
      },
    })

    return opts
  end,
}

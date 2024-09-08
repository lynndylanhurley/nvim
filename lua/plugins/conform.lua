return { "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    local js_opts = { "biome", "eslint", stop_after_first = true }

    conform.setup({
      formatters_by_ft = {
        javascript = js_opts,
        typescript = js_opts,
        javascriptreact = js_opts,
        typescriptreact = js_opts,
        css = { "stylelint" },
        html = { "djlint" },
        json = { "biome" },
        yaml = { "yamlfix" },
        markdown = { "markdownfmt" },
        graphql = { "biome" },
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt" },
        go = { "gofmt" },
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
  -- keys = {
  --   { '<leader>f', require('conform').format, desc = 'ConformFormat' },
  -- }
}

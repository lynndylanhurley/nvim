return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    local js_opts = { "biomejs" }

    lint.linters_by_ft = {
      javascript = js_opts,
      typescript = js_opts,
      javascriptreact = js_opts,
      typescriptreact = js_opts,
      json = js_opts,
      css = { "stylelint" },
      python = { "pylint" },
      yaml = { "yamllint" },
      zsh = { "zsh" },
      ruby = { "rubocop" },
      markdown = { "vale" }
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}

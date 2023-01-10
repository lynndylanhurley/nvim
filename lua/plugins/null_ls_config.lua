return {
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = {
    { 'neovim/nvim-lspconfig' },
    { 'nvim-lua/plenary.nvim' },
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      debug = true,
      sources = {
        -- actions
        -- null_ls.builtins.code_actions.gitsigns,

        -- formatting
        null_ls.builtins.formatting.json_tool,
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.formatting.nginx_beautifier,
        null_ls.builtins.formatting.phpcbf,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.sqlformat,
        null_ls.builtins.formatting.shfmt,
        -- null_ls.builtins.formatting.eslint_d.with({
        --   prefer_local = "node_modules/.bin"
        -- }),

        -- diagnostics
        -- null_ls.builtins.diagnostics.eslint_d.with({
        --   prefer_local = "node_modules/.bin"
        -- }),
        null_ls.builtins.diagnostics.luacheck,
      }
    })

    map('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<cr>')
  end
}

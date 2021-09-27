local module = {}

function module.init(use)
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'nvim-lua/plenary.nvim' },
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.config({
        debug = false,
        sources = {
          -- actions
          -- null_ls.builtins.code_actions.gitsigns,

          -- formatting
          null_ls.builtins.formatting.eslint_d,
          null_ls.builtins.formatting.json_tool,
          null_ls.builtins.formatting.lua_format,
          null_ls.builtins.formatting.nginx_beautifier,
          null_ls.builtins.formatting.phpcbf,
          null_ls.builtins.formatting.rustfmt,
          null_ls.builtins.formatting.rubocop,
          null_ls.builtins.formatting.sqlformat,
          null_ls.builtins.formatting.shfmt,

          -- diagnostics
          -- null_ls.builtins.diagnostics.eslint,
          null_ls.builtins.diagnostics.eslint_d,
          null_ls.builtins.diagnostics.luacheck,
        }
      })

      require("lspconfig")["null-ls"].setup {}

      map('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting_sync()<cr>')
    end
  }
end

return module

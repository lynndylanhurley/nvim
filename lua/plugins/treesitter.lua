local module = {}

function module.init(use)
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      { 'JoosepAlviste/nvim-ts-context-commentstring' },
      { 'nkrkv/nvim-treesitter-rescript' },
      { 'windwp/nvim-ts-autotag' }
    },
    run = ':TSUpdate',
    config = function()
      -- neorg
      local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

      parser_configs.norg = {
          install_info = {
              url = "https://github.com/nvim-neorg/tree-sitter-norg",
              files = { "src/parser.c", "src/scanner.cc" },
              branch = "main"
          },
      }

      parser_configs.norg_meta = {
          install_info = {
              url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
              files = { "src/parser.c" },
              branch = "main"
          },
      }

      parser_configs.norg_table = {
          install_info = {
              url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
              files = { "src/parser.c" },
              branch = "main"
          },
      }
      -- end neorg

      require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained",
        autotag = {
          enable = true,
        },
        context_commentstring = {
          enable = true
        },
        highlight = {
          use_languagetree = true,
          enable = true
        },
        indent = {
          enable = true
        },
        refactor = {
          highlight_definitions = { enable = false },
          highlight_current_scope = { enable = false }
        },
      }
    end
  }
end

return module

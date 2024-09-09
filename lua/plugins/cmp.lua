return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'windwp/nvim-autopairs',
    'onsails/lspkind-nvim',
  },
  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')

    -- completion
    cmp.setup {
      snippet = {
        expand = function(args)
          require'snippy'.expand_snippet(args.body)
        end
      },

      formatting = {
        format = lspkind.cmp_format(),
      },

      sources = cmp.config.sources({
        {name = 'snippy', keyword_length = 2},
        {name = 'nvim_lsp', keyword_length = 2},
        {name = 'path'},
      }),

      view = {
        entries = 'native'
      }
    }

  end
}

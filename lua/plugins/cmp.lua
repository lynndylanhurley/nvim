return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    { 'hrsh7th/cmp-path' },
    { 'onsails/lspkind-nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'honza/vim-snippets' },
    { 'dcampos/cmp-snippy' },
    { 'dcampos/nvim-snippy' },
    { 'honza/vim-snippets' },
    { 'windwp/nvim-autopairs' },
  },
  config = function()
    local cmp = require('cmp')
    local snippy = require("snippy")
    local lspkind = require('lspkind')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    require('nvim-autopairs').setup({
      disable_filetype = { "TelescopePrompt" , "guihua", "guihua_rust", "clap_input" },
      enable_afterquote = false,
      enable_moveright = false,
      check_ts = true
    })

    snippy.setup({
      mappings = {
        is = {
          ["<Tab>"] = "expand_or_advance",
          ["<S-Tab>"] = "previous",
        },
        nx = {
          ["<leader>x"] = "cut_text",
        },
      },
    })

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

    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end
}

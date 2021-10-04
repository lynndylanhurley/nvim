local module = {}

function module.init(use)
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'dcampos/nvim-snippy' },
      { 'hrsh7th/cmp-path' },
      { 'onsails/lspkind-nvim' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'honza/vim-snippets' },
      { 'dcampos/cmp-snippy' },
      { 'honza/vim-snippets' },
    },
    config = function()
      local cmp = require('cmp')
      local lspkind = require('lspkind')
      lspkind.init()

      cmp.setup {
        snippet = {
          expand = function(args)
            require'snippy'.expand_snippet(args.body)
          end
        },

        completion = {completeopt = 'menu,menuone,noinsert'},

        -- You should specify your *installed* sources.
        sources = {
          {name = 'snippy', keyword_length = 2},
          {name = 'nvim_lsp', keyword_length = 2},
          {name = 'path'},
          {name = 'buffer'}
        },

        formatting = {
          format = function(entry, vim_item)
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            return vim_item
          end
        },

        mapping = {
          ["<Tab>"] = cmp.mapping(function(fallback)
            if vim.fn.pumvisible() == 1 then
              if vim.fn['snippy#can_expand_or_advance']() then
                return vim.fn.feedkeys(t(
                  "<Plug>(snippy-expand-or-next)"))
              end

              vim.fn.feedkeys(t("<C-n>"), "n")
            elseif check_back_space() then
              vim.fn.feedkeys(t("<tab>"), "n")
            else
              fallback()
            end
          end, {"i", "s"}),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if vim.fn["snippy#can_jump"](-1) == 1 then
              return vim.fn.feedkeys(t("<Plug>(snippy-previous)"))
            elseif vim.fn.pumvisible() == 1 then
              vim.fn.feedkeys(t("<C-p>"), "n")
            else
              fallback()
            end
          end, {"i", "s"})
        }
      }
    end
  }
end

return module

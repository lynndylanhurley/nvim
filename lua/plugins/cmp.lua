local module = {}

function module.init(use)
  use {
    'hrsh7th/nvim-cmp',
    -- event = "InsertEnter", -- lazy load
    requires = {
      { 'hrsh7th/cmp-path' },
      -- { 'onsails/lspkind-nvim' },
      { 'hrsh7th/cmp-nvim-lsp' },
      -- { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'honza/vim-snippets' },
      { 'dcampos/cmp-snippy' },
      { 'dcampos/nvim-snippy' },
      { 'honza/vim-snippets' },
      -- { 'ray-x/navigator.lua' },
      { 'windwp/nvim-autopairs' },
    },
    config = function()
      local cmp = require('cmp')
      local snippy = require("snippy")
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      -- local lspkind = require('lspkind')
      -- lspkind.setup()

      require('nvim-autopairs').setup({
        disable_filetype = { "TelescopePrompt" , "guihua", "guihua_rust", "clap_input" },
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

      -- cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

      cmp.setup {
        snippet = {
          expand = function(args)
            require'snippy'.expand_snippet(args.body)
          end
        },

        -- completion = {completeopt = 'menu,menuone,noinsert'},

        -- You should specify your *installed* sources.
        sources = {
          {name = 'snippy', keyword_length = 2},
          {name = 'nvim_lsp', keyword_length = 2},
          {name = 'path'},
          -- {name = 'buffer'}
        },

        -- formatting = {
        --   format = lspkind.cmp_format(),
        -- },
      }

      cmp.setup.cmdline {
        mapping = cmp.mapping.preset.cmdline({
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
          end, {"i", "s"}),
          ['<CR>'] = cmp.mapping.confirm({ select = true }) -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        })
      }
    end
  }
end

return module

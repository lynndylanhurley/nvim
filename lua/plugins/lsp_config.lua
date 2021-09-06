local module = {}

function module.init(use)
  use {
    'neovim/nvim-lspconfig',
    requires = {
      { 'alexaandru/nvim-lspupdate' },
      -- { 'quangnguyen30192/cmp-nvim-ultisnips' },
      { 'dcampos/nvim-snippy' },
      { 'dcampos/cmp-snippy' },
      { 'ray-x/lsp_signature.nvim' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'onsails/lspkind-nvim' },
      { 'folke/lsp-colors.nvim' },
      { 'jose-elias-alvarez/nvim-lsp-ts-utils' } ,
    },
    config = function()
      local lspconfig = require('lspconfig')
      local cmp = require('cmp')
      local lspkind = require('lspkind')

      local servers = {
        'cssls',
        'bashls',
        -- 'diagnosticls',
        'dockerls',
        'flow',
        'gopls',
        'html',
        'intelephense',
        -- 'tsserver',
        'pyright',
        'jsonls',
        'rust_analyzer',
        'sourcekit',
        'solargraph',
        'vimls',
        'vuels'
      }

      -- The nvim-cmp almost supports LSP's capabilities so You should
      -- advertise it to LSP servers..
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

      local on_attach = function(client, bufnr)
        -- use null-ls for formatting
        client.resolved_capabilities.document_formatting = false

        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        local opts = { noremap=true, silent=true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ga', "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'v', 'ga', "<cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)

        -- signature help
        -- require "lsp_signature".on_attach({
        --   bind = true,
        --   handler_opts = {
        --     border = "single"
        --   }
        -- })
      end

      local on_tsserver_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")
        client.resolved_capabilities.document_range_formatting = false
        on_attach(client, bufnr)

        ts_utils.setup {
          enable_formatting = true,
          formatter = 'eslint_d',
          update_imports_on_move = false,
        }

        ts_utils.setup_client(client)

        local opts = { silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", opts)
      end

      cmp.setup {
        snippet = {
          expand = function(args)
            require 'snippy'.expand_snippet(args.body)
          end
        },

        completion = {
          completeopt = 'menu,menuone,noinsert',
        },

        -- You should specify your *installed* sources.
        sources = {
          -- { name = 'ultisnips' },
          { name = 'snippy' },
          { name = 'nvim_lsp' },
          { name = 'path' },
          { name = 'buffer' },
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
                return vim.fn.feedkeys(t("<Plug>(snippy-expand-or-next)"))
              end

              vim.fn.feedkeys(t("<C-n>"), "n")
            elseif check_back_space() then
              vim.fn.feedkeys(t("<tab>"), "n")
            else
              fallback()
            end
          end, {
              "i",
              "s",
            }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if vim.fn["snippy#can_jump"](-1) == 1 then
              return vim.fn.feedkeys(t("<Plug>(snippy-previous)"))
            elseif vim.fn.pumvisible() == 1 then
              vim.fn.feedkeys(t("<C-p>"), "n")
            else
              fallback()
            end
          end, {
              "i",
              "s",
            }),
        },
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end

      -- tsserver has special setup function
      lspconfig['tsserver'].setup({
        capabilities = capabilities,
        on_attach = on_tsserver_attach,
      })

      -- inline diagnostics
      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics, {
              virtual_text = false,
              underline = true,
              signs = true,
          }
      )
    end
  }
end

return module


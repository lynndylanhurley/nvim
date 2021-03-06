local module = {}

function module.init(use)
  use {
    'neovim/nvim-lspconfig',
    requires = {
      { 'alexaandru/nvim-lspupdate' },
      -- { 'ray-x/lsp_signature.nvim' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'folke/lsp-colors.nvim' },
      { 'jose-elias-alvarez/nvim-lsp-ts-utils' } ,
      -- { 'ms-jpq/coq_nvim', branch = 'coq' },
    },
    config = function()
      local lspconfig = require('lspconfig')

      local servers = {
        'cssls',
        'bashls',
        'dockerls',
        'flow',
        'gopls',
        'html',
        'intelephense',
        'pyright',
        'jsonls',
        'rust_analyzer',
        'sourcekit',
        'solargraph',
        'vimls',
        'vuels'
      }
      -- local coq = require "coq"

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


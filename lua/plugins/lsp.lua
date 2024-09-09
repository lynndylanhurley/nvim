return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v4.x',
  lazy = false,
  dependencies = {
    'williamboman/mason.nvim',
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/nvim-lsp-ts-utils",
    'hrsh7th/cmp-nvim-lsp',
    -- "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local lsp_zero = require('lsp-zero')
    local mason_lspconfig = require("mason-lspconfig")

    -- local lsp_attach = function(client, bufnr)
    --   local opts = {buffer = bufnr}
    -- end

    local lsp_servers = {
      'lua_ls',
      'rust_analyzer',
      'ts_ls',
      'biome',
      'eslint',
      'slint_lsp',
      'cssls',
      'dockerls',
      'dotls',
      'graphql',
      'html',
      'yamlls',
      'solargraph',
      'phpactor'
    }

    lsp_zero.extend_lspconfig({
      sign_text = true,
      -- lsp_attach = lsp_attach,
      capabilities = require('cmp_nvim_lsp').default_capabilities(),
    })

    lsp_zero.setup_servers(lsp_servers)

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = lsp_servers,

      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,
      }
    })
  end,
  keys = {
    -- format keymaps
    { '<leader>f', vim.lsp.buf.format, desc = 'LspFormat' },

    -- lsp keymaps
    { "gD", vim.lsp.buf.type_definition, desc = 'LspGotoDef' },
    { "gi", vim.lsp.buf.implementation, desc = 'LspGotoImp' }
  }
}

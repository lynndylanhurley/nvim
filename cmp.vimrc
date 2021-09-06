" lsp specific config

lua << EOF
  local lspconfig = require('lspconfig')
  local autopairs = require('nvim-autopairs')
  local cmp = require('cmp')
  local saga = require('lspsaga')
  local lspkind = require('lspkind')
  saga.init_lsp_saga()

  local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end

  local check_back_space = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
  end

  -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

  local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ga', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'v', 'ga', "<cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', "<silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>", opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", opts)

    -- function signature help
    require "lsp_signature".on_attach({
      bind = true,
      handler_opts = {
        border = "single"
      }
    })
  end

  local servers = {
    'cssls',
    'bashls',
    'diagnosticls',
    'dockerls',
    'flow',
    'gopls',
    'html',
    'intelephense',
    'tsserver',
    'pyright',
    'jsonls',
    'rust_analyzer',
    'sourcekit',
    'solargraph',
    'vimls',
    'vuels'
  }

  cmp.setup {
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body)
      end
    },

    completion = {
      completeopt = 'menu,menuone,noinsert',
    },

    -- You should specify your *installed* sources.
    sources = {
      { name = 'ultisnips' },
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
          if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
            return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>"))
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
    },
  }

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      }
    })
  end

  -- Diagnostics
  -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  --   vim.lsp.diagnostic.on_publish_diagnostics, {
  --   }
  -- )
EOF

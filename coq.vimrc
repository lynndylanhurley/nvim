" lsp specific config

lua << EOF
  vim.g.coq_settings = {
    auto_start = 'shut-up';
    keymap = { 
      recommended = false;
      bigger_preview = "<c-z>";
      jump_to_mark = "<c-'>";
    };
  }

  local lspconfig = require('lspconfig')
  local autopairs = require('nvim-autopairs')
  local saga = require('lspsaga')
  local coq = require("coq")
  require('lspkind').init()
  saga.init_lsp_saga()

  -- require'compe'.setup {
  --   enabled = true;
  --   autocomplete = true;
  --   debug = false;
  --   min_length = 1;
  --   preselect = 'always';
  --   throttle_time = 80;
  --   source_timeout = 200;
  --   incomplete_delay = 400;
  --   max_abbr_width = 100;
  --   max_kind_width = 100;
  --   max_menu_width = 100;
  --   documentation = true;

  --   source = {
  --     -- ultisnips = true;
  --     nvim_lsp = true;
  --     treesitter = false;
  --     buffer = true;
  --     path = true;
  --     calc = true;
  --     vsnip = false;
  --     nvim_lua = true;
  --     spell = true;
  --     tags = false;
  --     snippets_nvim = false;
  --   };
  -- }

  -- local capabilities = vim.lsp.protocol.make_client_capabilities()
  -- capabilities.textDocument.completion.completionItem.snippetSupport = true

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

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(coq.lsp_ensure_capabilities({
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      }
    }))
  end

  -- Diagnostics
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      -- This will disable virtual text, like doing:
      -- let g:diagnostic_enable_virtual_text = 0
      -- virtual_text = false,

      -- This is similar to:
      -- let g:diagnostic_show_sign = 1
      -- To configure sign display,
      --  see: ":help vim.lsp.diagnostic.set_signs()"
      -- signs = true,

      -- This is similar to:
      -- "let g:diagnostic_insert_delay = 1"
      -- update_in_insert = false,
    }
  )


    -- tab completion
  -- local t = function(str)
  --   return vim.api.nvim_replace_termcodes(str, true, true, true)
  -- end

  -- local check_back_space = function()
  --   local col = vim.fn.col('.') - 1
  --   return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
  -- end

  -- run through checking ultisnips viability. Returns fallthrough if fails
  -- local trigger_ultisnips_fwd = function(fallthrough)
  --   if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
  --     return t([[<C-R>=UltiSnips#ExpandSnippet()<CR>]])
  --   elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
  --     return t([[<C-R>=UltiSnips#JumpForwards()<CR>]])
  --   else
  --     return t(fallthrough)
  --   end
  -- end

  -- -- run through s-tab options too
  -- local trigger_ultisnips_bak = function(fallthrough)
  --   if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
  --     return t([[<C-R>=UltiSnips#JumpBackwards()<CR>]])
  --   else
  --     return t(fallthrough)
  --   end
  -- end

  -- tab completion for compe
  -- _G.tab_complete = function()
  --   -- if popup visible and has a value selected, go down
  --   if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info()["selected"] ~= -1 then
  --     return t("<C-N>")
  --   -- if popup is visible, but no value selected, attempt snippet expand
  --   elseif vim.fn.pumvisible() ~= 0 then
  --     return trigger_ultisnips_fwd("<C-N>")
  --   elseif check_back_space() then
  --     return t("<TAB>")
  --   else
  --     return trigger_ultisnips_fwd("<TAB>")
  --   end
  -- end

  -- -- s-tab completion for compe
  -- _G.s_tab_complete = function()
  --   if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info()["selected"] ~= -1 then
  --     return t("<C-P>")
  --   -- if popup is visible, but no value selected, attempt snippet previous jump
  --   elseif vim.fn.pumvisible() ~= 0 then
  --     return trigger_ultisnips_bak("<C-P>")
  --   else
  --     return trigger_ultisnips_bak("<S-TAB>")
  --   end
  -- end

  -- superceded by nvim autopairs
  -- vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm('<CR>')", {expr = true})
  -- vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", {expr = true})
  -- vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
  -- vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
  -- vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})



  vim.api.nvim_set_keymap('i', '<Esc>', [[pumvisible() ? "\<C-e><Esc>" : "\<Esc>"]], { expr = true })
  vim.api.nvim_set_keymap('i', '<C-c>', [[pumvisible() ? "\<C-e><C-c>" : "\<C-c>"]], { expr = true })
  vim.api.nvim_set_keymap('i', '<BS>', [[pumvisible() ? "\<C-e><BS>" : "\<BS>"]], { expr = true })
  vim.api.nvim_set_keymap('i', '<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true })
  vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<BS>"]], { expr = true })

  function _G.on_CR()
    if vim.fn.pumvisible() ~= 0 then
      if vim.fn.complete_info().selected ~= -1 then
        return vim.api.nvim_replace_termcodes('<C-y>', true, true, true)
      else
        return vim.api.nvim_replace_termcodes('<C-e>', true, true, true) .. autopairs.autopairs_cr()
      end
    else
      return autopairs.autopairs_cr()
    end
  end
  vim.api.nvim_set_keymap('i', '<CR>', 'v:lua.on_CR()', { expr = true, noremap = true })
EOF

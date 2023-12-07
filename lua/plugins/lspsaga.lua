return {
  "glepnir/lspsaga.nvim",
  event = 'BufRead',
  config = function()
    -- LPS tools
    require("lspsaga").setup({
      definition = {
        edit = '<cr>',
        vsplit = '<C-c>v',
        split = '<C-c>i',
        tabe = '<C-c>t',
        quit = 'q',
      },
      finder = {
        keys = {
          toggle_or_open = "<cr>",
        }
      },
      symbol_in_winbar = {
        enable = false,
      },
    })
  end,
  keys = {
    -- { "gr", "<cmd>Lspsaga finder def+ref<CR>", desc = 'LspFinder' },
    { "K", "<cmd>Lspsaga hover_doc<CR>", desc = 'LspHover' },
    { "ga", "<cmd>Lspsaga code_action<CR>", desc = 'CodeAction' },
    -- { "go", "<cmd>LSoutlineToggle<CR>", desc = 'LspOutlineToggle' },
    { "gr", "<cmd>Lspsaga rename<CR>", desc = 'LspRename' },
    { "gd", "<cmd>Lspsaga peek_definition<CR>", desc = 'LspPeekDef' },
    { "gD", "<cmd>Lspsaga peek_type_definition<CR>", desc = 'LspPeekDef' },

    { "gx", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = 'ShowLineDiag' },
    { "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = 'GotoPrevDiag' },
    { "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = 'GotoNextDiag' },

    -- Only jump to error
    { "[E", function()
      require("lspsaga.diagnostic").goto_prev({
        severity = vim.diagnostic.severity.ERROR
      })
    end, desc = 'GotoPrevErr' },
    { "]E", function()
      require("lspsaga.diagnostic").goto_next({
        severity = vim.diagnostic.severity.ERROR
      })
    end, desc = 'GotoNextErr' }
  }
}


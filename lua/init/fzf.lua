local module = {}

function module.init(use)
  use {
    'ibhagwan/fzf-lua',
    requires = {
      { 'junegunn/fzf', run = './install --bin' },
      { 'vijaymarupudi/nvim-fzf' },
      { 'kyazdani42/nvim-web-devicons' },
      { 'bogado/file-line' },
    },
    config = function()
      require("fzf").default_options = {
        fzf_binary = vim.fn.stdpath('data') .. '/site/pack/packer/start/fzf/bin/fzf'
      }

      -- local actions = require "fzf-lua.actions"
      require('fzf-lua').setup {
        fzf_layout = 'reverse'
      }

      local opts = { noremap = true, silent = true }

      map('n', '<leader>t', "<cmd>lua require('fzf-lua').files()<cr>", opts)
      map('n', '<leader>b', "<cmd>lua require('fzf-lua').buffers()<cr>", opts)
      map('n', '<leader>/', "<cmd>lua require('fzf-lua').live_grep()<cr>", opts)
      -- map('n', '<leader>c', "<cmd>lua require('fzf-lua').git_commits()<cr>", opts)
    end
  }
end

return module


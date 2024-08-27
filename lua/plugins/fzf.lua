return {
  'ibhagwan/fzf-lua',
  dependencies = {
    { 'junegunn/fzf', build = './install --bin' },
    { 'vijaymarupudi/nvim-fzf' },
    { 'nvim-tree/nvim-web-devicons' }
  },
  config = function()
    require("fzf").default_options = {
      fzf_binary = vim.fn.stdpath('data') .. '/site/pack/packer/start/fzf/bin/fzf'
    }

    -- local actions = require "fzf-lua.actions"
    require('fzf-lua').setup {
      fzf_layout = 'reverse',
      git = {
        commits = {
          cmd = 'git log --graph --color=always --date=short --format="%ad %C(auto)%h%d %an %s %C(black)%C(bold)%cr"',
          preview = [[echo "{}" | grep -o "[a-f0-9]\{7\}" | head -1 | xargs -I % sh -c 'git show --color=always % | less -R']]
        }
      }
    }
  end,
  keys = {
    { '<leader>t', "<cmd>lua require('fzf-lua').files()<cr>", desc = "Find file" },
    { '<leader>b', "<cmd>lua require('fzf-lua').buffers()<cr>", desc = "Find open buffer" },
    { '<leader>/', "<cmd>lua require('fzf-lua').live_grep()<cr>", desc = "Grep project dir" }
  }
}

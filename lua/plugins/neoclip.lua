return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    -- { 'kkharji/sqlite.lua', module = 'sqlite' },
    { 'ibhagwan/fzf-lua' },
  },
  config = function()
    require('neoclip').setup({
      -- enable_persistent_history = true,
      -- continuous_sync = true,
      -- keys = {
      --   fzf = {
      --     paste = '<nop>',
      --     paste_behind = '<nop>',
      --   }
      -- }
    })
    map('', '<c-p>', "<cmd>lua require('neoclip.fzf')()<cr>")
  end
}

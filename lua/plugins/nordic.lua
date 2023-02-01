return {
  'AlexvZyl/nordic.nvim',
  dependencies = {
    {'nvim-lualine/lualine.nvim'},
  },
  config = function()
    vim.cmd[[colorscheme nordic]]

    require 'lualine' .setup {
      options = {
        theme = 'nordic'
      }
    }
  end
}


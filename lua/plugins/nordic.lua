return {
  'AlexvZyl/nordic.nvim',
  dependencies = {
    {'nvim-lualine/lualine.nvim'},
  },
  config = function()

    require('nordic').setup({})

    vim.cmd[[colorscheme nordic]]

    require('lualine').setup({
      options = {
        theme = 'nordic'
      }
    })
  end
}


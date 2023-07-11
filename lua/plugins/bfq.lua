return {
  'kevinhwang91/nvim-bqf',
  lazy = false,
  ft = 'qf',
  config = function()
    require('bqf').setup({
      auto_enable = true,
      auto_resize_height = true
    })
  end
}

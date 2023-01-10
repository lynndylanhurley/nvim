return {
  'mrjones2014/lighthaus.nvim',
  config = function()
    require('lighthaus').setup({
      bg_dark = false,
      colors = {}
    })

    vim.cmd[[colorscheme lighthaus]]
  end
}

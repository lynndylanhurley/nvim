return {
  'famiu/feline.nvim',
  dependencies = {
    { 'EdenEast/nightfox.nvim' }
  },
  config = function()
    local colors = require('nightfox.colors.nightfox')

    require('feline').setup({
      preset = 'noicon',
      default_fg = colors.fg_alt,
      default_bg = colors.bg_alt,
      colors = {
        black = colors.black,
        skyblue  = colors.blue_br,
        cyan = colors.cyan,
        green = colors.green,
        oceanblue = colors.blue_dm,
        magenta = colors.magenta,
        orange = colors.orange,
        red = colors.red,
        violet = colors.pink,
        white = colors.white,
        yellow = colors.yellow,
      }
    })
  end
}

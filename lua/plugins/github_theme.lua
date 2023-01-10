return {
  'projekt0n/github-nvim-theme',
  config = function()
    require('github-theme').setup {
      theme_style = "dimmed",
      dark_sidebar = true,
    }
  end
}

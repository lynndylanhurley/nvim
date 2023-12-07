return {
  'projekt0n/github-nvim-theme',
  config = function()
    require('github-theme').setup({
      options = {
        darken = {                 -- Darken floating windows and sidebar-like windows
          floats = true,
          sidebars = {
            enabled = true,
            list = {
              'neotree',
              'terminal',
              'telescope'
            },             -- Apply dark background to specific windows
          },
        },
      },
    })
    vim.cmd('colorscheme github_dark')
  end
}

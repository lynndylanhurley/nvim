return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require'nvim-tree'.setup {
      git = {
        ignore = false
      },
      renderer = {
        icons = {
          show = {
            git = false,
            folder = true,
            file = true,
          }
        }
      }
    }

    map('', '<C-a>', ':NvimTreeToggle<CR>')
  end
}

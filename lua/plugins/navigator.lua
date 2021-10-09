local module = {}

function module.init(use)
  use {
    'ray-x/navigator.lua',
    requires = {
      {'neovim/nvim-lspconfig'},
      {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
    },
    config = function()
      require'navigator'.setup()
    end
  }
end

return module

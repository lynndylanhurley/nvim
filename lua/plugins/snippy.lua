local module = {}

function module.init(use)
  use {
    'dcampos/nvim-snippy',
    requires = {
      { 'honza/vim-snippets' },
      { 'dcampos/cmp-snippy' }
    },
  }
end

return module

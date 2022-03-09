local module = {}

function module.init(use)
  use {
    'meain/vim-package-info',
    run = 'npm install'
  }
end

return module


local module = {}

function module.init(use)
  use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }
end

return module

return {
  'aliqyan-21/darkvoid.nvim',
  config = function()
    require('darkvoid').setup({
      transparent = false, -- set true for transparent
      glow = false, -- set true for glow effect
    })
  end
}

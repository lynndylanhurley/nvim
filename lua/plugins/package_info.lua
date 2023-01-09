local module = {}

function module.init(use)
  use {
    'vuki656/package-info.nvim',
    requires = "MunifTanjim/nui.nvim",
    config = function()
      require('package-info').setup({
        -- colors = {
        --   outdated = "#5180b3",
        -- }
      })
    end
  }
end

return module

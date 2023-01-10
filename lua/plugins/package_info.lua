return {
  'vuki656/package-info.nvim',
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require('package-info').setup({
      -- colors = {
      --   outdated = "#5180b3",
      -- }
    })
  end
}

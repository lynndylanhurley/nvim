local module = {}

function module.init(use)
  use {
    'SirVer/ultisnips',
    requires = { { 'honza/vim-snippets' } },
    config = function()
      vim.g.UltiSnipsExpandTrigger = "<tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
    end
  }
end

return module

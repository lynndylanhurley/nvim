local module = {}

function module.init(use)
  use {
    'svermeulen/vim-yoink',
    config = function()
      vim.cmd([[
nmap <c-n> <plug>(YoinkPostPasteSwapForward)
nmap <c-p> <plug>(YoinkPostPasteSwapBack)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Also replace the default gp with yoink paste so we can toggle paste in this case too
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)

nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)
      ]])

      -- preserve yank history across sessions
      vim.g.yoinkSavePersistently = 1
    end
  }
end

return module

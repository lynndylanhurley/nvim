local module = {}

function module.init(use)
  use {
    'svermeulen/vim-yoink',
    config = function()
      -- cycle through paste history
      map('', 'p', '<plug>(YoinkPaste_p)', { noremap = true, silent = true })
      map('',  'P', '<plug>(YoinkPaste_P)', { noremap = true, silent = true })
      map('', '<c-p>', '<plug>(YoinkPostPasteSwapBack)', { noremap = true, silent = true })
      map('', '<c-u>', '<plug>(YoinkPostPasteSwapForward)', { noremap = true, silent = true })

      -- preserve cursor position when yanking
      map('', 'y', '<plug>(YoinkYankPreserveCursorPosition)', { noremap = true, silent = true })
      map('x', 'y', '<plug>(YoinkYankPreserveCursorPosition)', { noremap = true, silent = true })

      -- preserve yank history across sessions
      vim.g.yoinkSavePersistently = 1
    end
  }
end

return module

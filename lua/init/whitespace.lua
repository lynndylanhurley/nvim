local module = {}

function module.init(use)
  use {
    'ntpeters/vim-better-whitespace',
    config = function()
      vim.g.better_whitespace_filetypes_blacklist = {
        'dashboard',
        'diff',
        'gitcommit',
        'unite',
        'qf',
        'help',
        'telescope'
      }

      map('n', '<leader>w', ':StripWhitespace<CR>', { noremap = true, silent = true })
    end
  }
end

return module

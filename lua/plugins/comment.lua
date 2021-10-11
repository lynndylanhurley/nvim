local module = {}

function module.init(use)
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({
        toggler = {
          ---line-comment toggle
          line = 'c',
          ---block-comment toggle
          block = 'c',
        },

        opleader = {
          ---line-comment opfunc mapping
          line = 'g',
          ---block-comment opfunc mapping
          block = 'g',
        },
      })
    end
  }
end

return module

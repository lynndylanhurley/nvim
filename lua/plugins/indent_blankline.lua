local module = {}

function module.init(use)
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require("indent_blankline").setup {
        use_treesitter = true,
        buftype_exclude = {'terminal', 'nofile', 'dashboard'},
        filetype_exclude = {'dashboard'},
      }
    end
  }
end

return module

return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function()
    -- local c = require('nordic.colors')

    require("ibl").setup {
      whitespace = {
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
    }
  end

  -- 'lukas-reineke/indent-blankline.nvim',
  -- config = function()
  --   require("indent_blankline").setup {
  --     use_treesitter = true,
  --     buftype_exclude = {'terminal', 'nofile', 'dashboard'},
  --     filetype_exclude = {'dashboard'},
  --   }
  -- end
}

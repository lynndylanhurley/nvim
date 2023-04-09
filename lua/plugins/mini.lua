return {
  "echasnovski/mini.surround",
  version = '*',
  config = function()
    require("mini.surround").setup({
     mappings = {
        add = 'S', -- Add surrounding in Normal and Visual modes
        -- delete = 'sd', -- Delete surrounding
        -- find = 'sf', -- Find surrounding (to the right)
        -- find_left = 'sF', -- Find surrounding (to the left)
        -- highlight = 'sh', -- Highlight surrounding
        replace = 'cs'
      }
    })
  end
}


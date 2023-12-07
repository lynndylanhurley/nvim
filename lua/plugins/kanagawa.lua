return {
  'rebelot/kanagawa.nvim',
  config = function()
    require('kanagawa').setup({
      theme = "dragon",
      overrides = function(colors)
        return {
          IndentBlanklineChar = { fg = colors.palette.dragonBlack4 },
          IblIndent = { fg = colors.palette.dragonBlack4 },
          IblScope = { fg = colors.palette.dragonBlack4 },
          NeoTreeNormal = { bg = colors.palette.dragonBlack1 },
          NeoTreeNormalNC = { bg = colors.palette.dragonBlack1 },
          SignColumn = { bg = colors.palette.dragonBlack3 },
          LineNr = { bg = colors.palette.dragonBlack3 },
          GitSignsAdd = { bg = colors.palette.dragonBlack3 },
          GitSignsChange = { bg = colors.palette.dragonBlack3 },
          GitSignsDelete = { bg = colors.palette.dragonBlack3 }
        }
      end
    })

    vim.cmd("colorscheme kanagawa-dragon")
  end
}

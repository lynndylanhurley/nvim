return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    {'kyazdani42/nvim-web-devicons'},
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = "sherbet",
        component_separators = { left_sep = '', right_sep = ''},
        section_separators = { left_sep = '', right_sep = ''},
      },

      sections = {
        lualine_c = { {'filename', file_status = true, full_path = false, shorten = true, path = 1 } },
      }
    }
  end
}

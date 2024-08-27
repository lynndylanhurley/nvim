return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    {'nvim-tree/nvim-web-devicons'},
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = "auto",
        component_separators = { left_sep = '', right_sep = ''},
        section_separators = { left_sep = '', right_sep = ''},
        globalstatus = false
      },

      sections = {
        lualine_c = {
          {
            'filename',
            file_status = true,
            full_path = false,
            shortening_target = 30,
            path = 1
          }
        },
      }
    }
  end
}

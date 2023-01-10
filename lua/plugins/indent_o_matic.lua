return {
  'Darazaki/indent-o-matic',
  config = function()
    require('indent-o-matic').setup {
      -- Don't detect 8 spaces indentations inside files without a filetype
      filetype_ = {
        standard_widths = { 2, 4 },
      },
    }
  end
}

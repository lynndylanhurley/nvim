return {
  'junegunn/seoul256.vim',
  config = function()
    vim.g.seoul256_background = 234
    vim.opt.background = 'dark'

    vim.cmd [[
        colorscheme seoul256

        " indentation tabs
        hi NonText ctermfg=darkgrey guifg=#565656
        hi clear SpecialKey
        hi link SpecialKey NonText
        hi SpecialKey ctermfg=darkgrey guifg=#565656

        " lsp highlight groups
        highlight! link LspDiagnosticsSignError Exception
        highlight! link LspDiagnosticsSignWarning WarningMsg

        " split color
        hi vertsplit guifg=#2b2b2b guibg=#2b2b2b
    ]]

    -- term colors
    vim.g.terminal_color_0 = '#4E4E4E'
    vim.g.terminal_color_8 = '#626262'

    vim.g.terminal_color_1 = '#D68787'
    vim.g.terminal_color_9 = '#D75F87'

    vim.g.terminal_color_2 = '#5F865F'
    vim.g.terminal_color_10 = '#87AF87'

    vim.g.terminal_color_3 = '#D8AF5F'
    vim.g.terminal_color_11 = '#FFD787'

    vim.g.terminal_color_4 = '#85ADD4'
    vim.g.terminal_color_12 = '#ADD4FB'

    vim.g.terminal_color_5 = '#D7AFAF'
    vim.g.terminal_color_13 = '#FFAFAF'

    vim.g.terminal_color_6 = '#87AFAF'
    vim.g.terminal_color_14 = '#87D7D7'

    vim.g.terminal_color_7 = '#D0D0D0'
    vim.g.terminal_color_15 = '#E4E4E4'
  end
}

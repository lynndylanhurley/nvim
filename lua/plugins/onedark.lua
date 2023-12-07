function highlight(group, options)
    local guifg = options.fg or "NONE"
    local guibg = options.bg or "NONE"
    local gui = options.gui or "NONE"
    local blend = options.blend or 0

    vim.cmd(string.format("highlight %s guifg=%s guibg=%s gui=%s blend=%d", group, guifg, guibg, gui, blend))
end

return {
    'navarasu/onedark.nvim',
    config = function()
        onedark = require('onedark')

        onedark.setup({
            style = 'warmer',
            highlights = {
                IblIndent = { fg = '#3e444e' },
                IblScope = { fg = '#3e444e' }
            }
        })

        onedark.load()
    end
}

function highlight(group, options)
    local guifg = options.fg or "NONE"
    local guibg = options.bg or "NONE"
    local gui = options.gui or "NONE"
    local blend = options.blend or 0

    vim.cmd(string.format("highlight %s guifg=%s guibg=%s gui=%s blend=%d", group, guifg, guibg, gui, blend))
end

return {
    'ful1e5/onedark.nvim',
    config = function()
        onedark = require('onedark')

        onedark.setup({
            dark_sidebar = true,
            highlight_linenumber = false,
            sidebars = {"qf", "vista_kind", "terminal", "packer", "NvimTree"}
        })

        -- highlight("IndentGuide", {fg = "#3e444e"})
        highlight("IndentBlanklineChar", {fg = "#3e444e", gui = "nocombine"})
    end
}

return {
  "nvim-neorg/neorg",
  ft = "*.norg"
  config = function()
    require('neorg').setup {
      -- Tell Neorg what modules to load
      load = {
        ["core.defaults"] = {}, -- Load all the default modules
        ["core.norg.concealer"] = {}, -- Allows for use of icons
        ["core.norg.dirman"] = { -- Manage your directories with Neorg
          config = {
            workspaces = {
              my_workspace = "~/neorg"
            }
          }
        }
      },
    }
    vim.cmd("autocmd BufRead,BufNewFile *.norg setlocal filetype=norg")
  end
}

local module = {}

function module.init(use)
  use {
    'TimUntersberger/neogit',
    requires = { 
      {'nvim-lua/plenary.nvim'},
      {'sindrets/diffview.nvim'}
    },
    config = function()
      local neogit = require('neogit')
      neogit.setup {
        integrations = {
          diffview = true
        },
        mappings = {
          -- modify status buffer mappings
          status = {
            -- Adds a mapping with "B" as key that does the "BranchPopup" command
            ["-"] = "",
            -- Removes the default mapping of "s"
            ["s"] = "",
            ["u"] = "",
          }
        }
      }

      map('n', '<leader>g', '<cmd>lua require("neogit").open()<cr>')
    end
  }
end

return module


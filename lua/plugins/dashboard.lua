return {
  'glepnir/dashboard-nvim', 
  config = function()
    vim.g.dashboard_default_executive = 'fzf'
    vim.g.mapleader=","
    vim.g.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard' }
    vim.g.dashboard_custom_header = {
      [[                                 ]],
      [[                --      --       ]],
      [[              .:"  | .:'' |      ]],
      [[            --  ___   ___  -     ]],
      [[          /:.  /  .\ /.  \ .\    ]],
      [[         |:|. ;\___/O\___/  :|   ]],
      [[         |:|. |  `__|__`  | .|   ]],
      [[         |:|.  \_,     ,_/  /    ]],
      [[          \______       |__/     ]],
      [[           |:.           \       ]],
      [[          /.:,|  |        \      ]],
      [[         /.:,.|  |         \     ]],
      [[         |::.. \_;_\-;       |   ]],
      [[   _____|::..    .::|       |    ]],
      [[  /   ----,     .::/__,    /__,  ]],
      [[  \_______|,...____;_;_|../_;_|  ]],
      [[                                 ]],
    }
  end
}

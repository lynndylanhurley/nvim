return {
  'goolord/alpha-nvim',
  dependencies = {'nvim-tree/nvim-web-devicons'},
  config = function()
    local alpha = require'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
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
    alpha.setup(dashboard.opts)
  end
}

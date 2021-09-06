" lightline
let g:lightline = {
      \   'colorscheme': 'seoul256',
      \   'active': {
      \     'left': [ [ 'mode', 'paste' ],
      \               [ 'readonly', 'relativepath', 'modified' ] ],
      \     'right': [ [ 'lineinfo' ],
      \                [ 'percent' ],
      \                [ 'filetype' ] ]
      \   },
      \   'component_function': {
      \     'gitbranch': 'FugitiveStatusline'
      \   },
      \   'inactive': {
      \     'left': [  [ 'relativepath', 'modified' ] ],
      \     'right': [ [ 'lineinfo' ],
      \                [ 'percent' ],
      \                [ 'filetype' ] ]
      \   }
      \ }


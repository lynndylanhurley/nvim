" vimspector
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
" https://github.com/puremourning/vimspector#human-mode
" let g:vimspector_enable_mappings = 'HUMAN'

function! TestNamespace(filename)
  let l:path = fnamemodify(a:filename, ':r')
  " On a normal cargo project, the first item is 'src'
  let l:modules = split(l:path, '/')

  " 'src/lib.rs' and 'src/some/mod.rs' does not end
  " with actual module names
  if l:modules[-1] =~# '\v^(lib|mod)$'
    let l:modules = l:modules[:-2]
  endif


  " Build up tests module namespace
  if l:modules[0] == 'tests' && len(l:modules) == 2
    return ''
  else
    let l:modules = l:modules[1:]
    if len(l:modules) > 0
      return join(l:modules, '::') . '::'
    else
      return ''
    endif
  endif
endfunction

function! NearestRustTestName()
  let filename_modifier = get(g:, 'test#filename_modifier', ':.')

  let path = expand('%')
  let position = {}
  let position['file'] = fnamemodify(path, filename_modifier)
  let position['line'] = path == expand('%') ? line('.') : 1
  let position['col']  = path == expand('%') ? col('.') : 1

  let test_arg_arr = test#rust#cargotest#build_position('nearest', position)
  let test_name = test_arg_arr[0]
  let test_lib = matchstr(test_name, '^.*src::')

  if !empty(test_lib)
    let test_lib = substitute(test_lib, '::src::', '', '')
    let test_lib = substitute(test_lib, "^'", '', '')
    let test_arg_arr = test_arg_arr[:0] + ['-p', test_lib] + test_arg_arr[1:]
  endif

  " matcher doesn't work for the main fn for some reason
  let test_name = substitute(test_name, "^'main::", "'", '')

  " do not include package name in test filter arg
  let test_name = substitute(test_name, "^'.*src::", "'", '')

  let test_arg_arr = [test_name] + test_arg_arr[1:]

  return test_arg_arr
endfunction

function! NearestRustTestProgram(args)
  let flattened_args = join(a:args, ' ')
  let cmd = 'cargo test --quiet --no-run --message-format=json ' . flattened_args . ' | jq -r "select(.profile.test == true) | .filenames[]" | grep ".dSYM$" -v'

  echo cmd

  return trim(system(cmd))
endfunction


function! DebugNearestTest()
  " get test namespace + name of test nearest to cursor
  let test_args = NearestRustTestName()

  " compile the test and return the compiled program name
  let program = NearestRustTestProgram(test_args)

  " run vimspector using compiled test program
  let vimspector_args = #{ program: program, args: test_args[0] }

  return vimspector#LaunchWithSettings(vimspector_args)
endfunction


nmap <leader>dd <Plug>VimspectorContinue
nmap <leader>dq :call vimspector#Reset()<cr>
nmap <leader>ds <Plug>VimspectorStop
nmap <leader>dr <Plug>VimspectorRestart
nmap <leader>dp <Plug>VimspectorPause
nmap <leader>db <Plug>VimspectorToggleBreakpoint
nmap <leader>di <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader>df <Plug>VimspectorAddFunctionBreakpoint
nmap <leader>dl <Plug>VimspectorStepOver
nmap <leader>dj <Plug>VimspectorStepInto
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>dh <Plug>VimspectorRunToCursor
nmap <leader>dc :call vimspector#ClearBreakpoints()<cr>
nmap <leader>dn :call DebugNearestTest()<cr>

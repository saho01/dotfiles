" ---------------------- nerdtee ---------------------- "
function! s:filter_header(lines) abort
    let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
    let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
    return centered_lines
endfunction
function! s:list_commits()
  let git = 'git -C '.getcwd()
  let commits = systemlist(git .' log --oneline | head -n3')
  let git = 'G'. git[1:]
  return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction
let g:startify_lists = [
    \ { 'header': ['   MRU'],            'type': 'files', 'indices':['a','s','d','f','g'] },
    \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
    \ { 'header': ['   Sessions'],       'type': 'sessions' },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ { 'header': ['   Commits'],        'type': function('s:list_commits') },
    \ ]
let g:startify_session_persistence = 1
let g:startify_bookmarks = [ {'c': '~/.vimrc'}, '~/.bashrc' ]
let g:startify_padding_left = 15
let g:startify_files_number = 5
let g:startify_change_to_vcs_root = 1
let g:ascii = [
            \'_____________________________  __   _____________  ________',
            \'__  ___/__  ____/__  __/__  / / /   ___    |__  / / /_  __ \',
            \'_____ \__  __/  __  /  __  /_/ /    __  /| |_  /_/ /_  / / /',
            \'____/ /_  /___  _  /   _  __  /     _  ___ |  __  / / /_/ /',
            \'/____/ /_____/  /_/    /_/ /_/      /_/  |_/_/ /_/  \____/',
            \]
let g:lunacy = [
            \'>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<',
            \'>   Lunacy will prevail - #2   <',
            \'>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<',
            \]
let g:startify_custom_header = s:filter_header(g:ascii)
" let g:startify_custom_header = 'startify#pad(g:ascii + startify#fortune#boxed())'
let g:startify_custom_footer = s:filter_header(g:lunacy)
hi StartifyHeader  ctermfg=240
hi StartifyFooter  ctermfg=240
hi StartifySection ctermfg=240
hi StartifyFile ctermfg=240
hi StartifyPath ctermfg=33
hi StartifyNumber ctermfg=33

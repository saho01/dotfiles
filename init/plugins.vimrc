" ---------------------- base16-vim ---------------------- "
let base16colorspace=256
colorscheme base16-black-metal-immortal
let &t_TI = ''
let &t_TE = ''

" ---------------------- netrw ---------------------- "
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=20
let g:netrw_altv=1
let g:netrw_special_syntax=1
let g:netrw_list_hide='.*\.pyc,.*\.swp$'

" ---------------------- Airline settings ---------------------- "

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

let g:better_whitespace_guicolor='cyan'

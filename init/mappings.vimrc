inoremap jk <esc>
inoremap <esc> <nop>
inoremap DD <nop>
inoremap UU <nop>

" move to buffer down
noremap <Leader>j <C-W><C-J>
" move to buffer up
noremap <Leader>k <C-W><C-K>
" move to buffer left
noremap <Leader>h <C-W><C-H>
" move to buffer right
noremap <Leader>l <C-W><C-L>
" yank
noremap <Leader>y "+y
" paste
noremap <Leader>p "+p
" change case
noremap <Leader>c g~
nmap <leader>ll :call ListLeaders()<cr>
" noremap <Leader>m :GoImports<CR>

map <Enter> o<ESC>jk         " line below
map <S-Enter> O<ESC>jk       " line above

" newtrw toggle
map <C-n> :Lex<CR>

" Rg word under cursor
map <leader>rg :Rg <C-R>=expand("<cword>")<CR><CR>

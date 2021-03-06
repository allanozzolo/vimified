noremap <left> <left>
noremap <up> <up>
noremap <down> <down>
noremap <right> <right>

" Smart way to move between windows
map <C-up> <C-W><up>
map <C-down> <C-W><down>
map <C-left> <C-W><left>
map <C-right> <C-W><right>

set norelativenumber
set number


set laststatus=2                " Solves: statusline does not appear until I create a split

set noshowmode                  " Get rid of the default mode indicator

let g:airline_powerline_fonts = 0   " Use powerline symbols

set t_Co=256                    " Force Vim into 246 color mode, to display airline colors

let g:arline_theme = 'light'    " Self explanatory

" End of airline configs
" "
" " let g:indentLine_color_term = 239
"

map <C-t> :tabnew<cr>
map <C-d> :tabc<cr>
map <C-o> :tabe
map <C-p> :tabp<cr>

"noremap ; l
"noremap l h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dizionario ita
setlocal spell spelllang=it
" solo gvim
setlocal mousemodel=popup
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
""""""""""""""
" non so perche' il plugin per python lo disabilita..
set formatoptions+=t

" swap files
set dir=~/tmp
set swapfile
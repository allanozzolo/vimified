noremap <left> <left>
noremap <up> <up>
noremap <down> <down>
noremap <right> <right>

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
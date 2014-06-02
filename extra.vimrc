Bundle 'jistr/vim-nerdtree-tabs'
map <Leader>n <plug>NERDTreeTabsToggle<CR>


"Bundle 'fholgado/minibufexpl.vim'


Bundle 'scrooloose/nerdtree'
"nmap <C-i> :NERDTreeToggle<CR>
nmap <C-i> <plug>NERDTreeTabsToggle<CR>
" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L
" Keep NERDTree window fixed between multiple toggles
set winfixwidth


Bundle 'gerw/vim-latex-suite'

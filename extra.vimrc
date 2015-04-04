" Definizione di gruppi di pacchetti personali
" andranno poi inseriti, alla solita maniera, su local.vim

"Bundle 'fholgado/minibufexpl.vim'

" _. latex {{{
if count(g:vimified_packages, 'latex')
  Bundle 'gerw/vim-latex-suite'
endif
" }}}
"
" _. allanon_html {{{
if count(g:vimified_packages, 'allanon_html')
  Bundle 'tpope/vim-markdown'
  au BufNewFile,BufReadPost *.html setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
endif
" }}}

"" _. template {{{
"if count(g:vimified_packages, 'template')
"  Bundle 'repo/github'
"endif
"" }}}

" _. fugitive {{{
if count(g:vimified_packages, 'fugitive')
    Bundle 'tpope/vim-fugitive'
endif
" }}}

"" Funzionalità trasferite su autokey
"" _. trascrittore {{{
"if count(g:vimified_packages, 'trascrittore')
"    inoremap <Leader>g <C-[>oGIUDICE -
"    inoremap <Leader>t <C-[>oTESTE -
"    inoremap <Leader>i <C-[>oIMPUTATO -
"    inoremap <Leader>a <C-[>oAVVOCATO -
"    inoremap <Leader>d <C-[>oAVV. DIFESA -
"    inoremap <Leader>c <C-[>oAVV. PARTE CIVILE -
"    inoremap <Leader>pr <C-[>oPRESIDENTE -
"    inoremap <Leader>p <C-[>oP.M. -
"    imap e' è
"    imap a' à
"    imap o' ò
"    imap u' ù
"    imap i' ì
"endif
"" }}}


" _. allanon_general {{{
if count(g:vimified_packages, 'allanon_general')
    Bundle 'tpope/vim-surround'
    Bundle 'scrooloose/nerdtree'
    Bundle 'jistr/vim-nerdtree-tabs'
    map <Leader>n <plug>NERDTreeTabsToggle<CR>
    nmap <C-i> <plug>NERDTreeTabsToggle<CR>
    " Disable the scrollbars (NERDTree)
    set guioptions-=r
    set guioptions-=L
    " Keep NERDTree window fixed between multiple toggles
    set winfixwidth
endif
" }}}

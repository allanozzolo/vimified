" Definizione di gruppi di pacchetti personali
" andranno poi inseriti, alla solita maniera, su local.vim

"Bundle 'fholgado/minibufexpl.vim'

" _. latex {{{
if count(g:vimified_packages, 'latex')
  Bundle 'gerw/vim-latex-suite'
endif
" }}}
"
" _. nerdtreetabs {{{
if count(g:vimified_packages, 'nerdtreetabs')
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
    nmap <leader>gs :Gstatus<CR>
    nmap <leader>gc :Gcommit -v<CR>
    "nmap <leader>gac :Gcommit --amen -v<CR>
    "nmap <leader>g :Ggrep
    "" ,f for global git search for word under the cursor (with highlight)
    "nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
    "" same in visual mode
    ":vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>
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

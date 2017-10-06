" Definizione di gruppi di pacchetti personali
" andranno poi inseriti, alla solita maniera, su local.vim

"Bundle 'fholgado/minibufexpl.vim'

" _. latex {{{
if count(g:vimified_packages, 'latex')
  Bundle 'gerw/vim-latex-suite'
  "custom environment
  let g:Tex_Env_wrapfigure = "\\begin{wrapfigure}[<+12+>]{<+rlioRLIO+>}[<+34pt+>]{<+width+>}\<cr>\\centering\<cr>\\includegraphics[height=<+0.5+>\\textheight]{<+img file+>}\<cr>\\caption{<+caption text+>}\<cr>\\label{<+label+>}\<cr>\\end{wrapfigure}"
  let g:Tex_Env_figure = "\\begin{figure}[<+htpb+>]\<cr>\\centering\<cr>\\includegraphics[height=<+0.5+>\\textheight]{<+img file+>}\<cr>\\caption{<+caption text+>}\<cr>\\label{<+label+>}\<cr>\\end{figure}"
  let g:Tex_Env_frame = "\\begin{frame}{<++ title frame ++>}\<cr><++ content frame ++>\<cr>\\end{frame}"
endif
" }}}
"
" _. allanon_html {{{
if count(g:vimified_packages, 'allanon_html')
  " non serve nelle recenti versioni di vim...
  "Bundle 'tpope/vim-markdown'
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

" _. pelican {{{
if count(g:vimified_packages, 'pelican')
" utility per tabelle
Bundle 'godlygeek/tabular'
" utility per markdown
" es.: toc e altro
Bundle 'plasticboy/vim-markdown'
" ultisnips
Bundle 'sirver/UltiSnips'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-y>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
endif
 " }}}

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
    let g:nerdtree_tabs_open_on_gui_startup = 0
endif
" }}}

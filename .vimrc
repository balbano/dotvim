execute pathogen#infect()
filetype plugin indent on
syntax enable

colorscheme molokai

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd Filetype * setlocal expandtab tabstop=8 shiftwidth=2 softtabstop=2
autocmd Filetype python setlocal expandtab tabstop=8 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=8 shiftwidth=4 softtabstop=4

" pencil.vim setup
let g:pencil#wrapModeDefault = 'soft'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Misc
set number

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd Filetype python match OverLength /\%>79v.\+/
autocmd Filetype ruby match OverLength /\%>80v.\+/
autocmd Filetype javascript match OverLength /\%>80v.\+/
autocmd Filetype cpp match OverLength /\%>150v.\+/

" Mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

" MARKDOWN SETUP
" --------------

" Disable vim_markdown folding.
let g:vim_markdown_folding_disabled=1

" LATEX SETUP
" -----------

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf = 'C:\Program Files (x86)\SumatraPDF\SumatraPDF.exe'

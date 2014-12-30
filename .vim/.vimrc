call pathogen#infect()
set nocompatible
syntax on
filetype plugin indent on
au BufNewFile,BufRead,BufReadPost *.ceu set syntax=ceu
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized
set tabstop=4
set shiftwidth=4
set expandtab
nmap <C-Down> :m+<CR>
nmap <C-Up> :m-2<CR>
  

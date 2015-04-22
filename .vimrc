set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set noro " so that vimdiff doesn't open in readonly mode
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'Valloric/YouCompleteMe'
Bundle 'joonty/vdebug' 
Bundle 'fatih/vim-go'
Bundle 'pangloss/vim-javascript'
Bundle 'sprsquish/thrift.vim'

" All plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

" desert colorscheme
:color desert

let g:go_fmt_command = "goimports"

" vim-thrift
au BufRead,BufNewFile *.thrift set filetype=thrift

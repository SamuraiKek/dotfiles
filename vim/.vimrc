:set nocompatible              " required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

"auto-Indentation plugin
Plugin 'vim-scripts/indentpython.vim'
"auto-Complete
"Plugin 'Valloric/YouCompleteMe'

"syntax check
Plugin 'vim-syntastic/syntastic'

"autocomplete code
Plugin 'Valloric/YouCompleteMe'

"PEP 8 check
Plugin 'nvie/vim-flake8'

"file tree
Plugin 'scrooloose/nerdtree'

"color schemes
Plugin 'lifepillar/vim-gruvbox8'



" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"add new line with enter
map <Enter> o<ESC>

"chagne home and end indings
nnoremap 0 $
nnoremap 9 0

"UTF-8 Support
set encoding=utf-8

"some autocomplete setting
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"pretty code
let python_highlight_all=1
syntax on

"line numbering
set nu

set background=dark
colorscheme gruvbox8_soft

set clipboard=unnamedplus

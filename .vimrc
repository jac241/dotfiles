set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'flazz/vim-colorschemes'
Plugin 'shinzui/vim-idleFingers'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-endwise'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'rdnetto/YCM-Generator'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ervandew/supertab'

" The following are examples of different formats supported.
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
let mapleader = ","

colorscheme idleFingers

inoremap jk <Esc>
inoremap jj <Esc>
inoremap kk <Esc>
inoremap kj <Esc>

set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set backspace=2

" python
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 expandtab
" c++
autocmd BufRead,BufNewFile *.cpp setlocal cindent cinoptions=g-1
autocmd BufRead,BufNewFile *.h setlocal cindent cinoptions=g-1
set nu

let g:syntastic_python_python_exec = 'python3'
set colorcolumn=80
set noswapfile

"ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_server_python_interpreter = '/home/jcastiglione/anaconda/bin/python2'

syntax on
set t_Co=256

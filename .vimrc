set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/a.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/CmdlineComplete'
Plugin 'vim-scripts/mru.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'

if exists('$TMUX')
      set term=screen-256color
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=","
"encode
set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb18030,utf-16,big

syntax enable

" syntax highlighting
syntax on

"nowrap
set nowrap

"
colorscheme molokai
let g:molokai_original=1

set guifont=Envy\ Code\ R\ 11

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T

"
set tabstop=4
set shiftwidth=4
set expandtab

set number
set linespace=1

"highlight seach
set hlsearch

"instant search
set incsearch

set ignorecase

set nowrap

" Remap VIM 0 to first non-blank character
map 0 ^

set nocompatible

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set cmdheight=1

"tagbar
autocmd VimEnter * nested :call tagbar#autoopen(1)
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx TagbarOpen

"make && quickfix
":command -nargs=* Make silent make <args> | bo cwindow 9
:command -nargs=* Make silent make | cwindow 9

nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

"Automatically remove trailing spaces when saving a file.
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

let g:indentLine_char = '︙'

set autoread

noremap <space> :call ToggleFold()<CR>
function FoldBrace()
    if getline(v:lnum+1)[0] == '{'
        return 1
    endif
    if getline(v:lnum) =~ '{'
        return 1
    endif
    if getline(v:lnum)[0] =~ '}'
        return '<1'
    endif
    return -1
endfunction

set foldlevel=100
set foldexpr=FoldBrace()
set foldmethod=syntax
set foldenable

nmap <space> za

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set showmatch
set wildmenu
set showcmd

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-g>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

map <Leader>n :bn<cr>
map <Leader>p :bp<cr>

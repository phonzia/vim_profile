"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/dx2880/.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/dx2880/.vim')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('VundleVim/Vundle.vim')
call dein#add('tomasr/molokai')
call dein#add('majutsushi/tagbar')
call dein#add('kien/ctrlp.vim')
call dein#add('vimwiki/vimwiki')
call dein#add('tpope/vim-fugitive')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('vim-scripts/a.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('vim-scripts/CmdlineComplete')
call dein#add('vim-scripts/mru.vim')
call dein#add('vim-scripts/DoxygenToolkit.vim')
call dein#add('tpope/vim-surround')
call dein#add('Raimondi/delimitMate')
call dein#add('vim-airline/vim-airline')
call dein#add('easymotion/vim-easymotion')
call dein#add('fatih/vim-go')
call dein#add('amix/open_file_under_cursor.vim')
call dein#add('mattn/emmet-vim')
call dein#add('morhetz/gruvbox')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
filetype plugin indent on    " required

if exists('$TMUX')
      set term=screen-256color
endif

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
colorscheme gruvbox
let g:molokai_original=1

set guifont=Monofur\ for\ Powerline:h14

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
    if getline(v:lnum+1)[-1] == '{'
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
set foldmethod=expr
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

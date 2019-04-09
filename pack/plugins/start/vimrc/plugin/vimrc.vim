if &compatible
    set nocompatible
endif

" filetype setting
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

if exists('$TMUX')
    set term=screen-256color
endif

"set leader key
let mapleader=","

"encoding
set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb18030,utf-16,big

" syntax highlighting
syntax enable
syntax on

"nowrap
set nowrap

"colorscheme
colorscheme molokai
let g:molokai_original=1

" font
set macligatures
set guifont=Fira\ Code:h13

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

"indent setting
set tabstop=4
set shiftwidth=4
set expandtab

" line number
set number
set linespace=1

" search seeting
set hlsearch
set incsearch
set ignorecase

" autoread
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" cmd completion
set showmatch
set wildmenu
set showcmd

" jump to where file exit
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" make && quickfix
:command -nargs=* Make silent make | cwindow 9

""""""""""""""""""""""""""" Key Mapping Start From Here""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" buffer selection
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

"""""""""""""""""""""""""""" Plugin Setting Start From Here""""""""
" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" tagbar
autocmd VimEnter * nested :call tagbar#autoopen(1)
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx TagbarOpen

" indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" UltiSnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Leader>t"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" YouCompleteMe
let g:ycm_max_diagnostics_to_display = 300

" cpp enhanced highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1

" vim-rooter
let g:rooter_resolve_links = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['Makefile', 'makefile', 'MAKEFILE', '.git', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']

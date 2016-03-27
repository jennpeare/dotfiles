set nocompatible                "fixes old vi bugs
filetype off                    "vundle requirement

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"my plugins
Plugin 'w0ng/vim-hybrid'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'

"all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"basic settings
set backspace=eol,start,indent  "configure backspace so it works
set cmdheight=2                 "height of command bar
set cursorline                  "highlight cursor line
set history=500                 "undo history size
set laststatus=2                "always show status line
set number                      "line numbers
set mouse=a                     "use mouse in vim
set ruler                       "always show current position
set pastetoggle=<F2>            "key mapping"
set showmatch                   "show matching brackets
set tw=74                       "text width for auto-wrappine
set wrap linebreak nolist       "soft wrap

"colors
colorscheme hybrid
set background=dark
set t_Co=256
syntax on
let g:hybrid_custom_term_colors = 1

"tab settings
set autoindent                  "turn on auto-indenting
set expandtab                   "use spaces instead of tabs
set shiftwidth=2                "1 tab = 2 spaces
set smartindent                 "remember previous indent for new lines
set smarttab                    "smart tabs
set tabstop=2                   "1 tab = 2 spaces

"search settings
set incsearch                   "incremental search
set ignorecase                  "ignore case
set hlsearch                    "highlight search results
set smartcase                   "smart about searching cases

"allow saving of files as sudo when i forgot to start vim using sudo
cmap w!! w !sudo tee >/dev/null %

"use tabs for makefiles
autocmd FileType make setlocal noexpandtab

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"basic settings"
set backspace=eol,start,indent  "configure backspace so it works"
set cmdheight=2                 "height of command bar"
set cursorline                  "highlight cursor line"
set history=500                 "undo history size"
set laststatus=2                "always show status line"
set nocompatible                "fixes old vi bugs"
set number                      "line numbers"
set mouse=a                     "use mouse in vim"
set ruler                       "always show current position"
set showmatch                   "show matching brackets"
set tw=74                       "text width for auto-wrapping"
set wrap linebreak nolist       "soft wrap"

"colors"
colorscheme hybrid
set background=dark
set t_Co=256
syntax on

"tab settings"
set autoindent                  "turn on auto-indenting"
set expandtab                   "use spaces instead of tabs"
set shiftwidth=2                "1 tab = 2 spaces"
set smartindent                 "remember previous indent for new lines"
set smarttab                    "smart tabs"
set tabstop=2                   "1 tab = 2 spaces"

"search settings"
set incsearch                   "incremental search"
set ignorecase                  "ignore case"
set hlsearch                    "highlight search results"
set smartcase                   "smart about searching cases"

"key mappings"
set pastetoggle=<F2>

"turn on plugin & indentation support for specific filetypes"
filetype plugin indent on
cmap w!! w !sudo tee >/dev/null %
autocmd FileType make setlocal noexpandtab
execute pathogen#infect()

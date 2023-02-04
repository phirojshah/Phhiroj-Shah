:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a



"Rishad
syntax on;
set noerrorbells
set nu
set nohlsearch
set nowrap
set smartcase
set incsearch
set guioptions-=T "Removes Toolbar
set ruler "Where am i
set showcmd "Show (partial) command in status line
set nolist
set hidden
set mouse=a
set noswapfile
set nobackup
"filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set undodir="~/.config/nvim/undodir"
set undofile
set so=8
set signcolumn=yes
set cmdheight=2
set background=dark


set encoding=UTF-8
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#begin()
"plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" eactJS plugins
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jest-community/eslint-plugin-jest'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --dev' }
Plug 'elzr/vim-json'
"Plug 'jparise/vim-graphql'R
set encoding=UTF-8
Plug 'mxw/vim-jsx'
Plug 'justinj/vim-react-snippets'
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'Soares/base16.nvim'

Plug 'dstein64/nvim-scrollview', { 'branch': 'main' }



call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
 ":CocInstall coc-clangd
 ":CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
" S/JSX configurations
"
 "coc.nvim configurations
set updatetime=300
set hidden

" Node.js completion
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" C++ completion
autocmd FileType c,cpp setlocal omnifunc=ccomplete#Complete

" Python completion
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Rust completion
autocmd FileType rust setlocal omnifunc=rustcomplete#Complete
autocmd FileType javascript,jsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript,jsx setlocal expandtab
autocmd FileType javascript,jsx setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript,jsx setlocal indentexpr=JavaScriptIndent(v:lnum)
autocmd FileType javascript,jsx setlocal backspace=indent,eol,start
autocmd FileType javascript,jsx setlocal nosmartindent

" JSON configurations
autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType json setlocal expandtab
autocmd FileType json setlocal indentexpr=JSIndent(v:lnum)
autocmd FileType json setlocal backspace=indent,eol,start
autocmd FileType json setlocal nosmartindent

" GraphQL configurations
autocmd FileType graphql setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType graphql setlocal expandtab
autocmd FileType graphql setlocal indentexpr=GraphQLIndent(v:lnum)
autocmd FileType graphql setlocal backspace=indent,eol,start
autocmd FileType graphql setlocal nosmartindentJ
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"t

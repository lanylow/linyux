:syntax on

:set relativenumber
:set autoindent
:set nowrap
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set smartcase
:set encoding=UTF-8
:set incsearch

if exists('+termguicolors')
	:set termguicolors
endif

:highlight clear SpellBad
:highlight VertSplit cterm=NONE
:set fillchars+=vert:\

" call plug#begin('/home/lanylow/.local/share/nvim/site/autoload/plug.vim')
call plug#begin()
	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/ap/vim-css-color'
	Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} 
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'https://github.com/tc50cal/vim-terminal'
	Plug 'https://github.com/terryma/vim-multiple-cursors'
	Plug 'https://github.com/airblade/vim-gitgutter'
	Plug 'https://github.com/prettier/vim-prettier', { 'do': 'yarn install', 'for': [ 'javascript', 'typescript' ] }
	Plug 'https://github.com/xiyaowong/nvim-transparent'

	Plug 'https://github.com/joshdick/onedark.vim'
	Plug 'https://github.com/itchyny/lightline.vim'
call plug#end()

:colorscheme onedark

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#print_width = '100'

let g:transparent_enabled = v:true

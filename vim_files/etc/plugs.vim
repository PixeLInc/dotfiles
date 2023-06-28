call plug#begin($HOME . '/.vim/plugged')

" dependencies
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'haya14busa/is.vim'
Plug 'itchyny/lightline.vim'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-expand-region'
Plug 'mtth/scratch.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim' "focus mode pls.
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" color themes
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'cseelus/vim-colors-lucid'
Plug 'jdsimcoe/abstract.vim'
Plug 'habamax/vim-gruvbit'
Plug 'KabbAmine/yowish.vim'
Plug 'rafalbromirski/vim-aurora'
Plug 'sainnhe/everforest'
Plug 'pineapplegiant/spaceduck'
Plug 'Everblush/everblush.vim'
Plug 'tobi-wan-kenobi/zengarden'
Plug 'rebelot/kanagawa.nvim'

" Langs
Plug 'vim-crystal/vim-crystal'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'elixir-editors/vim-elixir'
Plug 'Tetralux/odin.vim'
Plug 'withgod/vim-sourcepawn'
Plug 'lepture/vim-jinja'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'ziglang/zig.vim'

" random qol
Plug 'ap/vim-css-color'
" Plug 'lukas-reineke/indent-blankline.nvim' " add indent guide lines, god help me.

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

packadd termdebug

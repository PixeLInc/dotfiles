call plug#begin($HOME . '/.vim/plugged')

" dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'haya14busa/incsearch.vim'
Plug 'terryma/vim-expand-region'
Plug 'mtth/scratch.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim' "focus mode pls.

" color themes
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'

" Langs
Plug 'vim-crystal/vim-crystal'
Plug 'LnL7/vim-nix'

" random qol
Plug 'ap/vim-css-color'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

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
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim' "focus mode pls.

" color themes
Plug 'morhetz/gruvbox'

" Langs
Plug 'vim-crystal/vim-crystal'
Plug 'LnL7/vim-nix'

call plug#end()

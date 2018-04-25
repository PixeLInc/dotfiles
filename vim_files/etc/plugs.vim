call plug#begin($HOME . '/.vim/plugged')

" Neovim
if has('nvim')
  " Autocompletion plugin
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Language plugins for deoplete
  Plug 'zchee/deoplete-jedi' " Python
  Plug 'sebastianmarkow/deoplete-rust' " Rust


endif

" dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tpope/vim-projectionist'
Plug 'tomtom/tlib_vim'

" language plugins
Plug 'rodjek/vim-puppet'
Plug 'tpope/vim-markdown'
Plug 'vim-perl/vim-perl'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'slashmili/alchemist.vim'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-scripts/gmlua.vim'
Plug 'wmayner/python3-syntax'
Plug 'rhysd/vim-crystal'
Plug 'bfrg/vim-cpp-modern'
Plug 'NLKNguyen/c-syntax.vim'
Plug 'udalov/kotlin-vim'
Plug 'elorest/vim-slang'
Plug 'neovimhaskell/haskell-vim'
Plug 'JesseKPhillips/d.vim'

" ruby on rails
Plug 'thoughtbot/vim-rspec'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'

" front end web development
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'elzr/vim-json'
Plug 'kchmck/vim-coffee-script'
Plug 'burnettk/vim-angular'
Plug 'othree/html5.vim'
Plug 'tpope/vim-haml'

" user text objects
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" vim helpers
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/syntastic'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/incsearch.vim'
Plug 'terryma/vim-expand-region'
Plug 'mtth/scratch.vim'
Plug 'terryma/vim-multiple-cursors'

" tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" quick searching
if executable('ag')
  Plug 'rking/ag.vim'
elseif executable('ack')
  Plug 'mileszs/ack.vim'
endif

" color themes
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'

call plug#end()

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

source $HOME/.config/nvim/config/deoplete.vim
source $HOME/.config/nvim/config/deoplete_rust.vim

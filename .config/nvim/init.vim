" Import current vim settings for nvim <-> vim compatability. (Most things are compatible which is greeeeeat!)
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


" Load deoplete settings
source $HOME/.config/nvim/config/deoplete.vim
source $HOME/.config/nvim/config/deoplete_rust.vim

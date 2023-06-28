set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" TextEdit might fail if hidden is not set.
set hidden

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" superior leader key
let mapleader=','

" Load plugin manager
" Ideally, this file should be lua.

lua << EOF
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
EOF

lua << EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.sourcepawn = {
  install_info = {
    url = "/mnt/backup_s/coding/git/tree-sitter-sourcepawn", -- local path or git repo
    files = {"src/scanner.c", "src/parser.c"},
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = "sp", -- if filetype does not match the parser name
}
EOF

" load the rest of the crap that I should probably put in here.
source ~/.vimrc

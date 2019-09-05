" File stuff
au FileType c setl sw=4 sts=4 et
au FileType cpp setl sw=4 sts=4 et
au FileType d setl sw=4 sts=4 et
let delimitMate_expand_cr=1

set relativenumber
nnoremap <silent> <F8> :set nonumber!<CR>:set relativenumber!<CR>:GitGutterToggle<CR>

" Crystal Formatter
let g:crystal_auto_format = 1

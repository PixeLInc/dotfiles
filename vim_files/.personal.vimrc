" File stuff
au FileType c setl sw=4 sts=4 et
au FileType cpp setl sw=4 sts=4 et
au FileType d setl sw=4 sts=4 et
let delimitMate_expand_cr=1

set relativenumber
nnoremap <silent> <F8> :set nonumber!<CR>:set relativenumber!<CR>:GitGutterToggle<CR>

" Crystal Formatter
let g:crystal_auto_format = 1

" idk, but the error won't stop :notlikeblob:
let g:snipMate = { 'snippet_version' : 1 }

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
colorscheme srcery

" Move fzf window to middle of screen + bigger
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

" goyo (focus mode)
" goyo doesn't come with a toggle command, so i hack that in here as well
nnoremap <silent> <F4> :call GoyoToggle()<cr>

let g:goyo_open = 0

function! GoyoToggle()
  if g:goyo_open
    Goyo!
    let g:goyo_open = 0
  else
    Goyo 120x100%
    set number relativenumber
    let g:goyo_open = 1
  endif
endfunction

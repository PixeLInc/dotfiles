" 'Lazy' load deoplete so startup time is :ok_hand:
let g:deoplete#enable_at_startup = 0
autocmd InsertEnter * call deoplete#enable()

let g:deoplete#enable_smart_case = 1

" Configure deoplete so that it uses tabs
inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>"
      \ : (<SID>is_whitespace() ? "\<Tab>" : deoplete#mappings#manual_complete())
inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<C-h>"

" Turn off the annoying giant block at the top when a suggestion is matched
set completeopt-=preview
" Autoselect the first suggestion
set completeopt+=noinsert

" disable autocomplete by default
"let b:deoplete_disable_auto_complete=1
"let g:deoplete_disable_auto_complete=1
"call deoplete#custom#buffer_option('auto_complete', v:false)

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
" No autocompletion in comments and such :D
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" Example for you setting custom sources for different languages

"let g:deoplete#sources = {}
"let g:deoplete#sources.cpp = ['LanguageClient']
"let g:deoplete#sources.python = ['LanguageClient']
"let g:deoplete#sources.python3 = ['LanguageClient']
"let g:deoplete#sources.rust = ['LanguageClient']
"let g:deoplete#sources.c = ['LanguageClient']
"let g:deoplete#sources.vim = ['vim']

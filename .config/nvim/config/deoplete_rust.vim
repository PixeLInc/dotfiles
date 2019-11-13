let g:deoplete#sources#rust#racer_binary='/home/pixel/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/pixel/.config/nvim/config/langs/rust/src'

let g:ale_fixers = {
      \   'rust': ['rustfmt'],
      \}

let g:ale_linters = {
      \'rust': ['rls'],
      \}

let g:ale_rust_rls_toolchain = 'stable'

let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


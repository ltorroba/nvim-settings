autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2

let g:neomake_typescript_enabled_makers = []

let g:neomake_cpp_enabled_makers = ['gcc']
let g:neomake_cpp_clang_maker = {
   \ 'args': ['-Wall', '-Wextra', '-Weverything', '-pedantic', '-Wno-sign-conversion', '-std=c++14'],
   \ }

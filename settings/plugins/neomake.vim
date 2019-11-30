autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2

let g:neomake_typescript_enabled_makers = []

let g:neomake_cpp_enabled_makers = ['gcc']
let g:neomake_cpp_clang_maker = {
   \ 'args': ['-Wall', '-Wextra', '-Weverything', '-pedantic', '-Wno-sign-conversion', '-std=c++14'],
   \ }

let g:neomake_python_flake8_maker = {
    \ 'args': ['--ignore=E221,E241,E272,E251,W702,E203,E201,E202,W191',  '--format=default'],
    \ 'errorformat':
        \ '%E%f:%l: could not compile,%-Z%p^,' .
        \ '%A%f:%l:%c: %t%n %m,' .
        \ '%A%f:%l: %t%n %m,' .
        \ '%-G%.%#',
    \ }
let g:neomake_python_enabled_makers = ['flake8']

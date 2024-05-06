" Run Black automatically
let g:python3_host_prog = $HOME . '/miniconda3/bin/python'
autocmd BufWritePre *.py execute ':Black'

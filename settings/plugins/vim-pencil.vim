augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text,tex     call pencil#init()
augroup END

" Makes it so that \emph{X} is concealed and only italic X is shown, so that \tau
" is replaced with an actual tau symbol, etc.
let g:pencil#conceallevel = 2

" Allows concealing current line on both normal and command-line modes
let g:pencil#concealcursor = 'nc'

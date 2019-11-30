augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType tex call lexical#init()
augroup END

let g:lexical#spell_key = '<leader>s'

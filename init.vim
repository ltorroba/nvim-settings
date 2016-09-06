set nocompatible
filetype off

" Setup Plugs
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'bkad/CamelCaseMotion'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'myusuf3/numbers.vim' " Not working for Neovim
Plug 'zesme/numbers.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

" Remaps
let mapleader = ","

" Load Plug(in) configs
let vimsettings = '~/.config/nvim/settings'
let uname = system("uname -s")

for fpath in split(globpath(vimsettings, '*.vim'), '\n')

  if (fpath == expand(vimsettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(vimsettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath
endfor


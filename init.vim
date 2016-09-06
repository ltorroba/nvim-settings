set nocompatible
filetype off

" Setup Plugs
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bkad/CamelCaseMotion'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ntpeters/vim-better-whitespace'
Plug 'myusuf3/numbers.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

" Load Plug(in) configs
let plugsettings = '~/.config/nvim/settings/plugins'
let uname = system("uname -s")

for fpath in split(globpath(plugsettings, '*.vim'), '\n')

  if (fpath == expand(plugsettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(plugsettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath
endfor

" Load Pesonal configs
let personalsettings = '~/.config/nvim/settings/personal'

for fpath in split(globpath(personalsettings, '*.vim'), '\n')

  if (fpath == expand(personalsettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
    continue " skip mac mappings for linux
  endif

  if (fpath == expand(personalsettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
    continue " skip linux mappings for mac
  endif

  exe 'source' fpath
endfor

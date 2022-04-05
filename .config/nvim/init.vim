" specify directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} " autocompletion framework
Plug 'zchee/deoplete-jedi' " autocompletion source
Plug 'jiangmiao/auto-pairs' " automatic quote/bracket completion
Plug 'preservim/nerdtree' " display file tree
Plug 'tomasiser/vim-code-dark'

call plug#end()

let g:deoplete#enable_at_startup = 1

" open nerdtree at startup
autocmd VimEnter * NERDTree | wincmd p
" close nerdtree if it's the only window open
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" codedark theme
syntax on
colorscheme codedark

" display line numbers
set number

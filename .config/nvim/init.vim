call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree' " display file tree
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" use tab completion
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"

" switch between windows in terminal mode
tnoremap <C-w> <C-\><C-n><C-w>

" open nerdtree at startup
autocmd VimEnter * NERDTree | wincmd p
" close nerdtree if it's the only window open
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set number
syntax on
colorscheme codedark
let g:airline_theme = 'codedark'

" open a terminal on the bottom right
command BT belowright split | resize 16 | startinsert | term


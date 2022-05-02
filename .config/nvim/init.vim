
set invnumber
inoremap <A-z> <Esc>

set clipboard+=unnamedplus

set tabstop=4
set shiftwidth=4
set expandtab

nnoremap <silent><C-j> o<Esc>
nnoremap <silent><C-k> o<Esc>

set completeopt-=preview






nnoremap <leader>. :CtrlPTag<cr>

set autoindent
set cindent 
map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' 

Plug 'mjm2000/ps.vim' 




Plug 'justinmk/vim-syntax-extra'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'davidhalter/jedi-vim'

Plug 'kien/ctrlp.vim'

Plug 'vimwiki/vimwiki' 

Plug 'tpope/vim-fugitive'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'derekwyatt/vim-fswitch'

Plug 'godlygeek/tabular'

Plug 'plasticboy/vim-markdown'

Plug 'vim-scripts/c.vim'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}


Plug 'mboughaba/i3config.vim'

Plug 'scrooloose/nerdcommenter'




call plug#end()

filetype plugin on





let g:vim_markdown_folding_disabled = 1


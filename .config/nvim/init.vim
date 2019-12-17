map <C-y> "+y
map <C-p> "+p

set invnumber
inoremap <A-z> <Esc>

let mapleader =","

inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

set tabstop=4
set shiftwidth=4
set expandtab

nnoremap <silent><C-j> o<Esc>
nnoremap <silent><C-k> o<Esc>

set completeopt-=preview


colorscheme paradoxcolors 
syntax on


"c 
autocmd FileType c inoremap ,m int<Space>main(int argc,char *argv[]){<Enter><Enter>}<Esc>k
autocmd FileType c inoremap ,i if(){<Enter><Enter>}<Esc>kklla
autocmd FileType c inoremap ,f for(){<Enter><Enter>}<Esc>kkllla;;;<Esc>hhhi

autocmd FileType c nnoremap <C-_> i//<Esc>


nnoremap <leader>. :CtrlPTag<cr>

set autoindent
set cindent 


"cpp 
autocmd FileType cpp inoremap ,c class class_name{<Enter><Enter>}<Esc>ki
autocmd FileType cpp inoremap ,m int<Space>main(int argc,char *argv[]){<Enter><Enter>}<Esc>k
autocmd FileType cpp inoremap ,i if(){<Enter><Enter>}<Esc>kklla
autocmd FileType cpp inoremap ,f for(){<Enter><Enter>}<Esc>kkllla;;;<Esc>hhhi

autocmd FileType cpp nnoremap <C-_> i//<Esc>


"scala:w

"linting 

"html
autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc

"MARKDOWN
autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

map <leader>c :w! \| !compiler <c-r>%<CR>

""auto complete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
""make commands
autocmd FileType c nnoremap <C-M> :w<CR> :make -C ..<Enter>  
autocmd FileType c nnoremap <C-R> :w<CR> :exec'!gcc % && ./a.out'<Enter>
autocmd FileType cpp nnoremap <C-R> :w<CR> :exec'!g++ % && ./a.out'<Enter>

autocmd FileType python nnoremap <C-M> :w<CR> :exec '!python' shellescape(@%, 1)<cr>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' 

Plug 'deoplete-plugins/deoplete-jedi'

Plug 'mjm2000/ps.vim' 

Plug 'rust-lang/rust.vim'

Plug  'hdima/python-syntax'

Plug 'AndrewRadev/id3.vim' 

Plug 'idanarye/vim-vebugger'

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

Plug 'derekwyatt/vim-scala'

Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }

Plug 'mboughaba/i3config.vim'

Plug 'scrooloose/nerdcommenter'

Plug 'LucHermitte/lh-vim-lib'

Plug 'LucHermitte/local_vimrc'

Plug 'zchee/deoplete-clang'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'neomake/neomake'

let g:deoplete#enable_at_startup = 1
call plug#end()

filetype plugin on


let g:vim_markdown_math = 1

set clipboard=unnamed

let g:deoplete#enable_at_startup = 1


let g:vim_markdown_folding_disabled = 1

call deoplete#custom#option('num_processes', 1)

call neomake#configure#automake('nw', 500)

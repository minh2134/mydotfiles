"let maplocalleader = "-"

set number

"Global setting
set autoindent
filetype plugin indent on
syntax on

"installing vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"initializing nerdtree
"autocmd vimenter * NERDTree

"Setting for mutt email stuff
au BufRead /tmp/mutt-* set tw=72

"Configuring vimtex
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'zathura'


"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_tex_checkers = ['ChkTeX']
let g:syntastic_python_checkers = ['flake8']

"calling vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'lervag/vimtex'
Plug 'omnisharp/omnisharp-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
"Trying to implement vimtex with YouCompleteMe
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

"ayu theme settings

set termguicolors
let ayucolor="mirage"
colorscheme ayu

set backspace=indent,eol,start

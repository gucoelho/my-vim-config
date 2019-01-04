set runtimepath^=$HOME/.vim
set directory^=$HOME/.vim/swapfiles//
 
call plug#begin('~/.vim/plugged')
    Plug 'vim-scripts/Zenburn'
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'mattn/emmet-vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

           
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h9:cANSI
  endif

    colorscheme gruvbox
    set background=dark
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif

if !has("gui_running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    colors zenburn
    let g:zenburn_high_Contrast=1
endif

"  NerdTree Config
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1 
let NERDTreeDirArrows = 1
let NERDTreeMapActivateNode='<space>'

nnoremap <C-B> :NERDTreeToggle <Enter>\

" ALE Config
nnoremap <F12> :ALEGoToDefinition <Enter>
let g:ale_completion_enabled = 1
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1

" Vim Airline Config
" let g:airline_powerline_fonts = 1

"  My Keymaps
noremap <F8> :source $MYVIMRC <Enter>

set backspace=indent,eol,start

set wrap

set clipboard=unnamedplus

syntax on

set hlsearch
set ignorecase
set smartcase
set incsearch

set linebreak
set relativenumber

set title
set hidden

set smarttab
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set shiftround

set showmatch

set laststatus=2
set ruler
set encoding=utf-8
set cursorline

set showcmd

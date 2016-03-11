"PLUGINY I VUNDLE
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

"Moje PLUGINY
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
<<<<<<< HEAD
Plugin 'honza/Vim-snippets'

" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
=======

" Color schemes
Plugin 'altercation/vim-colors-solarized'

>>>>>>> 5f3b8763b4b66ee5c381c83f46e569c9c77976f3

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"USTAWIENIA
"Sposob zachowania przy podziale obrazu
" set splitbelow
" set splitright

"Sposob zawijania tekstu
set foldmethod=indent
set foldlevel=99

"Ustawienia kodowania
set encoding=utf-8

" Ustawienia dla NerdTree - ignorowanie plikow *.pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Wciecia dla Pythona
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

"Wciecia dla HTML i css
" au BufNewFile,BufRead *.js, *.html, *.css
"     \ set tabstop=2
"     \ set softtabstop=2
"     \ set shiftwidth=2

" Pokazuje 'biale znaki'
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"MAPOWANIA
"Poruszanie pomiedzy podzialami (Ctrl+klawisze ruchu)
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

"Mapowanie do kolapsniecia funkcji
nnoremap <space> za

"ZERZNIETE OD Martina Brochhausa
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

<<<<<<< HEAD
=======
" Wylaczenie strzalek
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

>>>>>>> 5f3b8763b4b66ee5c381c83f46e569c9c77976f3
" Quick quit command - zamykanie okien przez LEADER (w tym wypadku ,)+e
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving between tabs
" map <Leader>n <esc>:tabprevious<CR>
" map <Leader>m <esc>:tabnext<CR>


" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
" set t_Co=256
" color wombat256mod
colorscheme blue

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on


" easier formatting of paragraphs
" vmap Q gq
" nmap Q gqap


" Useful settings
set history=700
set undolevels=700


"Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

if has("terminfo")
    let &t_Co=16
    let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
    let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
else
    let &t_Co=16
    let &t_Sf="\<Esc>[3%dm"
    let &t_Sb="\<Esc>[4%dm"
endif

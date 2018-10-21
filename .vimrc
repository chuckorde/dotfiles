" create vim sub dirs
if !isdirectory($HOME . '/.vim/colors')
	echo 'Making ~/.vim/colors directory'
	call mkdir($HOME . '/.vim/colors', 'p')
	echo 'Downloading kolor.vim to ~/.vim/colors directory'
	execute '!curl -fLo ~/.vim/colors/kolor.vim
				\ https://raw.githubusercontent.com/zeis/vim-kolor/master/colors/kolor.vim'
endif

if !isdirectory($HOME . '/.vim/plugs')
	echo 'Making ~/.vim/plugs directory'
	call mkdir($HOME . '/.vim/plugs', 'p')
endif

if !isdirectory($HOME . '/.vim/autoload')
	echo 'Making ~/.vim/autoload directory'
	call mkdir($HOME . '/.vim/autoload', 'p')
endif

" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	echo 'Installing Plug...'
	execute '!curl -fLo ~/.vim/autoload/plug.vim 
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	echo 'Please call PlugInstall'
endif

call plug#begin('~/.vim/plugs')
Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim', {'do': 'git submodule update --init'}
Plug 'heavenshell/vim-pydocstring', {'for': 'python'}
Plug 'vim-python/python-syntax'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on

" config / display options
colorscheme kolor
let g:airline_theme='bubblegum'
syntax on
set nu
set tabstop=2
set shiftwidth=2
set incsearch
set hlsearch
set title
set virtualedit=onemore
set backspace=indent,eol,start

" set characters for list mode
set listchars=tab:\|-,trail:~

"
" Status line
" set laststatus=2
set colorcolumn=80


" set leaderkey
let mapleader=","

" comment line -- t-coment
map <leader>c <c-_><c-_>

" inoremap <leader>, <C-x><C-o>
set completeopt=menu,menuone,longest
" set paste

" let g:ctrlp_map=''
nnoremap <silent> <leader>o :CtrlPCurWD<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>
let g:user_emmet_leader_key='<C-z>' "^z,
"
" splits
" really should use c-ws and c-wv with c-wr to swap
" also c-wH and c-wK
nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>

" cycle number/rnu
nmap <leader>l :exec &nu==&rnu? "se nu!" : "se rnu!"<cr>
nmap <leader>m :exec &lines==24? "se lines=80" : "se lines=24"<cr>

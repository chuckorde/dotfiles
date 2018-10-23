set nocompatible

" create vim sub dirs
if !isdirectory($HOME . '/.vim/colors')
	execute '!git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/'
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
	echo 'Press enter if run from `bash README` OR call PlugInstall'
endif

call plug#begin('~/.vim/plugs')
Plug 'kien/ctrlp.vim'
Plug 'heavenshell/vim-pydocstring', {'for': 'python'}
Plug 'vim-python/python-syntax'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
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
set colorcolumn=80

" set leaderkey
let mapleader=","
set completeopt=menu,menuone,longest


" comment line -- t-coment
map <leader>c <c-_><c-_>

" Ctrl p
nnoremap <silent> <leader>o :CtrlPCurWD<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

" Emmit
let g:user_emmet_leader_key='<C-z>' "^z,

" UtilSnip
let g:UltiSnipsExpandTrigger="<cr>"
let g:UltiSnipsListSnippets='<C-l>'
let g:UltiSnipsEditSplit='horizontal'

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

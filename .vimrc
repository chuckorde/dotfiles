execute pathogen#infect( 'plugins/{}' )

set nocompatible
"set term=$TERM
set t_Co=256

set listchars=tab:>-,trail:~
"set list
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set tabstop=4
set shiftwidth=4
set noexpandtab
filetype indent on
set autoindent
set smartindent
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

set nu
set vb
syntax on
set ru
set showmode
set incsearch        "Find the next match as we type the search
set hlsearch
set title
set virtualedit=onemore
"set spell


colorscheme kolor
"colorscheme pychimp 

if has("gui_running")
	"colorscheme macvim
	set gfn=Monaco:h12
	set guioptions-=T
	set guioptions-=r
endif


au BufRead,BufNewFile *.tex setf tex

au BufRead,BufNewFile bash-fc-* set filetype=sh
let mapleader=","

filetype plugin on
"
" comment line -- t-coment
map <leader>c <c-_><c-_>

inoremap <leader>, <C-x><C-o>
set completeopt=menu,menuone,longest
let g:user_zen_leader_key = '<C-e>'

let g:ctrlp_map=''
nnoremap <silent> <leader>o :CtrlPCurWD<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>
"set cm=blowfish

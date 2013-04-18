execute pathogen#infect( 'plugins/{}' )
call pathogen#helptags()

set nocompatible
"set term=$TERM
set t_Co=256

set listchars=tab:\|-,trail:~
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
"set ru
set showmode
set incsearch        "Find the next match as we type the search
set hlsearch
set title
set virtualedit=onemore
"set spell



" Lifted from:
" http://www.scarpa.name/2011/04/06/terminal-vim-resizing/
" Function to size up.
function SizeUpFunc()
	if exists("g:oldColumns")
		return
	endif
	" Save the current width.
	let g:oldColumns = &columns
	let g:oldLines = &lines
	" Reset column size when Vim quits.
	au VimLeave * SizeDown
	" Bigger width to make room for line numbers and the sign markers.
	set columns=85 lines=999
endfunction
command SizeUp call SizeUpFunc()

" Function to size down.
function SizeDownFunc()
	if !exists("g:oldColumns")
		return
	endif
	" Restore the original size.
	let &columns = g:oldColumns
	let &lines = g:oldLines
	" Remove the variable.
	unlet g:oldColumns
	unlet g:oldLines
endfunction
command SizeDown call SizeDownFunc()



colorscheme kolor
"colorscheme pychimp 

if has("gui_running")
	"colorscheme macvim
	set gfn=Monaco:h12
	set guioptions-=T
	set guioptions-=r
	au InsertLeave * highlight StatusLine guifg=grey guibg=#505050 
	au InsertEnter * highlight StatusLine guifg=black guibg=white 
else
	"SizeUp
  	au InsertLeave * highlight StatusLine ctermfg=black ctermbg=darkgrey
  	au InsertEnter * highlight StatusLine ctermfg=black ctermbg=white
endif

set statusline=%t\ %m%r%y%=(ascii=\%03.3b,hex=\%02.2B)\ (%l/%L,%c)\ 
set laststatus=2


au BufRead,BufNewFile *.tex setf tex
au BufNewFile,BufRead *.less set filetype=less
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

" cycle number/rnu
nmap <leader>l :exec &nu==&rnu? "se nu!" : "se rnu!"<cr>


" ============
" Vundle stuff
" ============
set nocompatible			  " be iMproved, required
filetype off				  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'shime/vim-livedown'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
"Plugin 'FredKSchott/CoVim'

" Color schemes
Plugin 'tomasr/molokai'

" Syntax
Plugin 'HTML5-Syntax-File'

" All of your Plugins must be added before the following line
call vundle#end()			 " required
filetype plugin indent on	 " required

" ===============
" Plugin settings
" ===============

" Ultisnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" YCM
let g:ycm_autoclose_preview_window_after_insertion = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDCommenter
let NERDSpaceDelims=1

" ============
" Key mappings
" ============
let mapleader=","
nnoremap ; :
cmap w!! w !sudo tee > /dev/null %
nmap <Leader>v :tabe $MYVIMRC<CR>
nmap <Leader><Space> :noh<CR>
nmap <Leader>s :setlocal spell!<CR>
nmap <Leader>l :setlocal list!<CR>
nmap <Leader>w :setlocal wrap!<CR>
nmap <Leader>S :mksession!<CR>
nmap <Leader>o :source Session.vim<CR>
nmap <Leader>b :w<CR> :!pdflatex %<CR>
nmap <Leader>m :LivedownPreview<CR>

if has("nvim")
	tnoremap <C-\> <C-\><C-n>
endi

" Visual movement
nmap <Up> g<UP>
nmap <Down> g<Down>
imap <Up> <Esc>gka
imap <Down> <Esc>gja
nmap j gj
nmap k gk

" Tabs
map <C-PageUp> :tabp<CR>
map <C-PageDown> :tabn<CR>

" =======
" General
" =======
set backspace=indent,eol,start
set undolevels=1000
set spelllang=en_gb

" Colors
syntax on
if !has("gui_running")
	if $TERM == "xterm"
		let $TERM = "xterm-256color"
	endif
	set t_Co=256
endif
colorscheme molokai

" Indentation
set autoindent
set copyindent
set tabstop=4
set shiftwidth=4
set noexpandtab

" UI
set ttyfast
set laststatus=2 "always display the statusline in all windows
set mouse=a
set number
set nowrap
set linebreak
set showcmd
set wildmenu
set wildmode=longest,full
set listchars=eol:¬,tab:\¦\ ,trail:~,extends:>,precedes:<
set cursorline

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Copy/Paste
set clipboard=unnamedplus

" Filetype specific
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Use different directories for backup files
" (the directories need to exist)
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Reload .vimrc on save
augroup reload_vimrc
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

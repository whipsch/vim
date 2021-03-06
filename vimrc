" vimrc - https://github.com/whipsch/vim/ 
"
" git clone git://github.com/whipsch/vim.git ~/.vim
" ln -s ~/.vim/vimrc ~/.vimrc
" ln -s ~/.vim/gvimrc ~/.gvimrc


" i use vim for a reason
set nocompatible


" file options
set noswapfile
set nobackup
set nowritebackup


" why not here?
call pathogen#infect()


" enable use of file type detection
filetype on
filetype plugin on
filetype indent on
syntax on


set fileformats=unix,dos

" save files when switching, don't ask to save when cycling buffers
set autowrite
set hidden


" <leader> + command delay
set timeoutlen=300


" various interface settings
set cursorline
set nostartofline
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
set number
set laststatus=2 " always show
set linespace=2

"set statusline=%<%f\ %w%h%m%r\ [%{&ff}/%Y]\ [%{getcwd()}]%=%-14.(%l,%c%V%)\ %p%%
set statusline=
set statusline +=%1*\ %n\ %* "buffer #
set statusline +=%5*%{&ff}%* "file format
set statusline +=%3*%y%* "file type
set statusline +=%4*\ %<%F%* "full path
set statusline +=%2*%m* "modified flag
set statusline +=%#warningmsg#%{SyntasticStatuslineFlag()}%*
set statusline +=%1*%=%5l%* "current line
set statusline +=%2*/%L%* "total lines
set statusline +=%1*%4v\ %* "virtual column number
set statusline +=%2*0x%04B\ %* "char under cursor

" tab rules
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" backspace
set bs=2

" indentation rules
set smartindent
set autoindent


" line formatting
set wrap
set textwidth=79
set formatoptions=qrn1


" search rules
set incsearch
set hlsearch
set ignorecase
set smartcase


" windows and buffers
set splitbelow

" delete all buffers
nmap <silent> <leader>da :exec "1," . bufnr('$') . "bd"<cr>

" window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" split vertical and switch window
nnoremap <leader>v <C-w>v<C-w>l


" keyboard shortcuts

" be consistent with C and D
nnoremap Y y$

" maintain visual selection when shifting
vnoremap > >gv
vnoremap < <gv

" for T-Comment
nmap <leader>c <C-_><C-_>
vmap <leader>c <C-_><C-_>gv

" location list
nmap <leader>lc :lclose<CR>
nmap <leader>lo :lopen<CR>

" easymotion
" one character search
nmap s <Plug>(easymotion-s)

nmap <leader>ls :e .<CR>


" line bubbling
nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]


" auto commands

" re-source .vimrc if we just modified it
autocmd BufWritePost .vimrc source $MYVIMRC

" other config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_html_tidy_exec = ['tidy5']

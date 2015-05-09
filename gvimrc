" vimrc - https://github.com/whipsch/vim/
"
" git clone git://github.com/whipsch/vim.git ~/.vim
" ln -s ~/.vim/vimrc ~/.vimrc
" ln -s ~/.vim/gvimrc ~/.gvimrc


set background=light
colorscheme molokai

set go-=T " no toolbar
set go-=m " no menubar
set go+=c " use vim style prompts instead of alert dialogs

set go+=LlRrb
set go-=LlRrb

set mousehide " hide mouse in insert mode

set vb t_vb= " fuck off bells

if has("gui_win32")
  set guifont=Source_Code_Pro_Medium:h12:cDEFAULT
else
  set guifont=Source\ Code\ Pro\ Medium\ 12
end


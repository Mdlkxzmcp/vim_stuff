"-----------Vundle-----------"

filetype off									"Required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'


call vundle#end()								"Marks the end of the plugin list.
filetype plugin indent on						"Required



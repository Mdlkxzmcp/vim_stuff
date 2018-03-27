
"-----------General-----------"

set nocompatible								"Require the latest Vim settings/options.
so ~/.vim/plugins.vim							"Import Plugins.

syntax enable


set backspace=indent,eol,start					"Make backspace behave like in every other editor.
set number										"Activates line numbers.
set cursorline									"Highlight current line.
set tabstop=4									"Number of visual spaces per TAB.
set softtabstop=4								"Number of spaces per TAB when editing.
set wildmenu									"Visual autocomplete for command menu.
set lazyredraw									"Redraw only when needed.
set showmatch									"Highlight matching [{()}].


let mapleader = '\'								"Default is \.





"-----------Looks-----------"

colorscheme elflord								"Also available: atom-dark-256, murphy, desert
set t_CO=256									"Use 256 colors which is useful for Terminal Vim.




"-----------Search-----------"

set hlsearch									"Highlight search.
set incsearch									"Incremental search.




"-----------Split Management-----------"

"Split will be always created below/to-the-right
set splitbelow
set splitright




"-----------Mappings-----------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/.vimrc<cr>
"-    -   -   -   -    -  vim file.
nmap <Leader>et :tabedit ~/vim<cr>
"-    -   -   -   -    -  plugins file.
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Enter creates a new line in command mode.
nmap <cr> o<esc>

"Stop search highlighting.
nmap <Leader><space> :nohlsearch<cr>

"Close current tab after saving.
nmap <Leader>cc :w<cr> :tabc<cr>

"Save session (vi -S to reopen).
nmap <Leader>s :mksession<cr>


"Replace Ctrl-W-x to Ctrl-x for split navigation.
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>


"Move line(s) up / down.
nmap <S-j> :m+<cr>==
nmap <S-k> :m-2<cr>==
imap <S-j> <Esc>:m+<cr>==gi
imap <S-k> <Esc>:m-2<cr>==gi
vmap <S-j> :m '>+1<cr>gv=gv
vmap <S-k> :m '<-2<cr>gv=gv


"When in insert -> jk is esc.
imap jk <esc>


"/ CtrlP
"Browse most recent files in buffer.
nmap <c-F> :CtrlPMRUFiles<cr>
"Browse through symbols.
nmap <c-R> :CtrlPBufTag<cr>

"/ NERDTree
"Toggle NERDTree.
nmap <Leader>/ :NERDTreeToggle<cr>




"-----------Auto-Commands-----------"

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %		"Automatically source the Vimrc file on save.
augroup END




"-----------Plugins-----------"

"/ CtrlP
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
let g:ctrlp_working_path = 0						"Make CtrlP respect change of working dir.
let g:ctrlp_swith_buffer = 0						"Open files in new buffer.

"/ NERDTree
let NERDTreeHijackNetrw = 0






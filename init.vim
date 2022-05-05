" !! BETTER NOT TO CHANGE THE ORDER !!
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nowrap

" ## plugins ##
source $HOME/.config/nvim/general/plugins.vim

" Key bindings

" Control-S Save
nmap <C-s> :w<cr>
vmap <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

" Open file explore
nmap <C-t> :NERDTreeToggle<CR>
imap <C-t> <esc>:NERDTreeToggle<CR>

" Undo Redo
nmap <C-z> :u<CR>
nmap <C-r> :r<CR>
imap <C-z> <esc>:u<CR>
imap <C-r> <esc>:r<CR>

" Close window
nmap <C-q> :q!<CR>

" New tab
nmap <C-n> :tabnew<CR>

" Tab navigation
nmap <C-Left> :tabprevious<CR>
nmap <C-Right> :tabnext<CR>

imap <C-Left> <esc>:tabprevious<CR>
imap <C-Right> <esc>:tabnext<CR>

" Closing Tab
nmap <C-Tab> :tabclose<CR>

" Navigtion to end or start of a line
imap <C-Right> <end>
imap <C-left> <home>

" Copy paste 
vmap <C-c> y
vmap <C-p> p
vmap <C-x> c

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:indentLine_enabled = 1

" ## python environment ##
let g:python3_host_prog =
  \ '/data/data/com.termux/files/usr/bin/python'

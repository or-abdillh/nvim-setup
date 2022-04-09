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
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-u> :u<CR>
nmap <C-r> :r<CR>
nmap <C-S> :wq<CR>
nmap <C-s> :w<CR>
nmap <C-q> :q!<CR>
nmap <C-Left> :tabprevious<CR>
nmap <C-Right> :tabnext<CR>
nmap <C-x> :tabclose<CR>

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

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" ## python environment ##
let g:python3_host_prog =
  \ '/data/data/com.termux/files/usr/bin/python'

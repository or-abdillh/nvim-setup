if empty(glob('~/.config/nvim/autoload/plug.vim'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugs')

  " Themes  
  Plug 'sainnhe/sonokai'
  "Plug 'ajh17/spacegray.vim'
  "Plug 'mhartington/oceanic-next'
  "Plug 'morhetz/gruvbox'

  " Multiple cursoe
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " Auto complete
  Plug 'neoclide/coc.nvim'

  " Create dir or new file
  Plug 'duggiefresh/vim-easydir'

  " statusline
  Plug 'https://github.com/vim-airline/vim-airline'
  "Plug 'bling/vim-airline'

  " Auto pairs for (), [], "", '', {}
  Plug 'jiangmiao/auto-pairs'

  " for better syntax highlighting
  Plug 'sheerun/vim-polyglot'
  
  " Vue syntax highlighting
  Plug 'posva/vim-vue'

  " FUZZY FINDER file finder
  Plug 'junegunn/fzf'

  " NERDTree file explorer
  Plug 'preservim/nerdtree'

  " Dev icons displays file's icons
  Plug 'ryanoasis/vim-devicons'
  "Plug 'ryanoasis/nerd-fonts'
  "Plug 'vim-scripts/vim-webdevicons'

  "git tracker plugin
  Plug 'airblade/vim-gitgutter'

  " indent line
  Plug 'Yggdroot/indentLine'
  "Plug 'vim-scripts/indentLine.vim'
  "Plug 'nathanaelkane/vim-indent-guides'

  " Vim Terminal
  " Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
  Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal

  " Vim Lorem Ipsum generator
  Plug 'vim-scripts/loremipsum'

  "JS Auto complete
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
  call plug#end()

:colorscheme sonokai

let g:indentLine_enabled = 2

" Setup for vim airline
let g:airline#extensions#tabline#enabled = 1

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

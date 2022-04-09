if empty(glob('~/.config/nvim/autoload/plug.vim'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugs')

  " Themes
  "Plug 'joshdick/onedark.vim'
  "Plug 'morhetz/gruvbox'
  "Plug 'lifepillar/vim-gruvbox8'
  "Plug 'ayu-theme/ayu-vim'
  "Plug 'haystackandroid/carbonized'
  "Plug 'https://github.com/cocopon/iceberg.vim/'
  "Plug 'NLKNguyen/papercolor-theme'
  Plug 'sainnhe/sonokai'

  " Auto complete
  Plug 'neoclide/coc.nvim'

 " statusline
  Plug 'https://github.com/vim-airline/vim-airline'
 
  " Auto pairs for (), [], "", '', {}
  Plug 'jiangmiao/auto-pairs'

  " for better syntax highlighting
  Plug 'sheerun/vim-polyglot'
  "Plug 'uiiaoo/java-syntax.vim'

  " FUZZY FINDER file finder
  Plug 'junegunn/fzf'

  " NERDTree file explorer
  Plug 'preservim/nerdtree'

  " Dev icons displays file's icons
  Plug 'ryanoasis/vim-devicons'

 " git tracker plugin
  Plug 'airblade/vim-gitgutter'

  " indent line
  Plug 'Yggdroot/indentLine'
  "Plug 'vim-scripts/indentLine.vim'
  "Plug 'nathanaelkane/vim-indent-guides'

  " Vim Terminal
  " Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
  Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
  
  " JS Auto complete
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
  call plug#end()

:colorscheme sonokai

" Setup for indent guides
"let g:indent_guides_enable_on_vim_startup = 1
let g:indentLine_enabled = 2


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

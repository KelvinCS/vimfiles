call plug#begin('~/.config/nvim/plugged')

" Plugins:

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rstacruz/vim-closer'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Search
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Languages and frameworks
Plug 'mattn/emmet-vim'

" UI
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'

"Languages
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" Lint
Plug 'dense-analysis/ale'

" Reports
" Plug 'wakatime/vim-wakatime'

call plug#end()

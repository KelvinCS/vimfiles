call plug#begin('~/.config/nvim/plugged')

" Plugins:

" Editing
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rstacruz/vim-closer'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'

" Search
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Languages and frameworks
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'

" UI
Plug 'joshdick/onedark.vim'

" Lint
Plug 'dense-analysis/ale'

" Reports
Plug 'wakatime/vim-wakatime'

call plug#end()

source ~/.config/nvim/plugins.vim

syntax on
colorscheme onedark

" Let's

let mapleader = " "
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:user_emmet_leader_key = ","


"End let's


" Set's

set number relativenumber
set nowrap
set clipboard=unnamed
set expandtab
set smartindent
set tabstop=4
set shiftwidth=4
set smartcase
set ignorecase
set noswapfile

"End Set's


" Coc settings

set hidden
set cmdheight=2
set updatetime=300
set signcolumn=yes
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-json',
  \ ]

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


autocmd CursorHold * silent call CocActionAsync('highlight')

"End coc settings


" FZF

nnoremap ; :Files<CR>

" End FZF


" Mappings

" Open init.vim with `confe` and reload vim with `confr`
nnoremap confe :e $MYVIMRC<CR>
nnoremap confr :so $MYVIMRC<CR>

" Open Ag (search)
nnoremap <Leader>; :Ag<CR>

" Use jk as ESC 
inoremap jk <Esc>

" Navigate through windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>th :tabprev<CR>
nnoremap <Leader>tl :tabnext<CR>

"End Mappings



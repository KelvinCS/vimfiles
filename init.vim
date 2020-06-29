source ~/.config/nvim/plugins.vim

syntax on
colorscheme gruvbox

" Let's

let mapleader = " "
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
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


" Goc settings

set hidden
set cmdheight=2
set updatetime=300
set signcolumn=yes
set laststatus=2
set statusline^=%{FugitiveStatusline()}%{coc#status()}%{get(b:,'coc_current_function','')}
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-json',
  \ ]

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

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

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"End coc settings


" FZF

nnoremap ; :Files<CR>

" End FZF

" NERDTree 

map <Leader>nt :NERDTreeToggle<CR>
map <Leader>nf :NERDTreeFind<CR>

" End NERDTree

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

command! WQ wq
command! Wq wq
command! W w
command! Q q
"End Mappings

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

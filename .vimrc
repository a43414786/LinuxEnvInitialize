syntax on
set t_Co=256
set t_ut=
colorscheme koehler
set showcmd
set nu
set tabstop=4
set shiftwidth=4
set autoindent
set nowrap
set incsearch
set autoindent
set cindent
set smartindent
set cursorline
set laststatus=2
set mouse=a
au FileType markdown set wrap
au FileType text set wrap
au BufNew,BufNewFile,BufRead *.ejs :set filetype=ejs
au FileType ejs set syntax=html
autocmd BufNewFile,BufRead *.ts set syntax=javascript
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
map <tab> :s/^/\t<CR>
map <S-tab> :s/^\t/<CR>
nmap <F3> :r! cat<CR>
nmap <F7> :set invnumber<CR>
nmap cs :noh<CR>
command W w
command Q q
command Wq wq
command WQ wq
hi Pmenu ctermbg=black ctermfg=white
hi Ignore ctermbg=black ctermfg=lightblue



set timeoutlen=1000 ttimeoutlen=0
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
let g:ale_echo_cursor = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
Plug 'maralla/completor.vim'
let g:completor_clang_binary = '/usr/bin/clang'
inoremap <expr> <TAB> pumvisible() ?"\<C-n>": "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ?"\<C-p>": "\<S-TAB>"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'ouo'
call plug#end()

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
filetype plugin on
Plug 'itchyny/lightline.vim'
set laststatus=2
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
nmap <F5> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
			\ quit | endif
Plug 'jiangmiao/auto-pairs'
au FileType ejs let b:AutoPairs = AutoPairsDefine({'<%': '%>', '<!--': '-->'})
au FileType html let b:AutoPairs = AutoPairsDefine({'<!--': '-->'})
Plug 'preservim/nerdcommenter'
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCustomDelimiters = { 'ejs': { 'left': '<!--','right': '-->' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
Plug 'mbbill/undotree'
nnoremap <F6> :UndotreeToggle<CR>
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
Plug 'Chiel92/vim-autoformat'
let g:python3_host_prog="/usr/bin/python3"
nmap <leader>f :Autoformat<CR>
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'junegunn/vim-easy-align'
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
Plug 'mattn/emmet-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'
Plug 'maxmellon/vim-jsx-pretty'
hi link jsxPunct Directory
hi link jsxCloseString Directory
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ap/vim-css-color'
Plug 'bfrg/vim-cpp-modern'
Plug 'cespare/vim-toml'
call plug#end()

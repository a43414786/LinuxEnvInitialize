syntax on
set t_Co=256
set t_ut=colorscheme koehler
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

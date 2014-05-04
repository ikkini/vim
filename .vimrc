" http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
filetype off
call pathogen#infect()
call pathogen#helptags()
set foldmethod=indent
set foldlevel=99
set number
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!
set statusline=%{fugitive#statusline()}
" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>
" Add the virtualenv's site-packages to vim path

" for highlighting trailing whitespace:
" :~/.vim$ git submodule add \
" http://github.com/bronson/vim-trailing-whitespace.git \
" bundle/vim-trailing-whitespace

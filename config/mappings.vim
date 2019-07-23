" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>u :Unite<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" CTRL+S to save
map <C-s> :w<cr>
imap <C-s> <ESC>:w<cr>a

"CTRL+Q to quit, shift to discard
map <C-q> :q<cr>
map <C-S-q> :q!<cr>
imap <C-q> <ESC>:q<cr>
imap <C-S-q> <ESC>:q!<cr>

" Useful mappings for managing buffers"
nnoremap <S-Left> :bn<CR>
nnoremap <S-Right> :bp<CR>

" Useful mappings for managing tabs"
nnoremap <C-S-Left> :tabprevious<CR>
nnoremap <C-S-Right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

" vim-one colors
let g:airline_theme='one'

" TagBar toggle
nmap <F8> :TagbarToggle<CR>

" Python completor
let g:completor_python_binary = 'python'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

let g:completor_auto_trigger = 0
inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"

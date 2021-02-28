" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

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
nnoremap <S-q> :bd<CR>

" Useful mappings for managing tabs"
nnoremap <C-S-Left> :tabprevious<CR>
nnoremap <C-S-Right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

" vim-one colors
let g:airline_theme='one'

" Remove netrw
let loaded_netrwPlugin = 1

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" FZF
map <C-o> :FZF<CR>

" vim-dispatch Make
nmap <F7> :Make<CR>

" TagBar toggle
nmap <F8> :TagbarToggle<CR>

" Open terminal
map <S-F8> :below terminal ++rows=10<CR>

" vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
" reset debug view
nmap <Leader>dr <Plug>VimspectorReset

let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#tabline#enabled      = 1
let g:airline#extensions#branch#enabled       = 1


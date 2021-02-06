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

" Remove netrw
let loaded_netrwPlugin = 1

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" TagBar toggle
nmap <F8> :TagbarToggle<CR>

" Open terminal
map <S-F8> :below terminal ++rows=10<CR>

" Python completor
let g:completor_python_binary = 'python'
"Ctrl-Space for completions. Heck Yeah!
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>


let g:completor_auto_trigger = 0

" NeoDebug
let g:neodbg_debugger              = 'gdb'           " gdb,pdb,lldb
let g:neodbg_gdb_path              = '/usr/bin/gdb'  " gdb path
let g:neodbg_cmd_prefix            = 'DBG'           " default command prefix
let g:neodbg_console_height        = 15              " gdb console buffer hight, Default: 15
let g:neodbg_openbreaks_default    = 1               " Open breakpoints window, Default: 1
let g:neodbg_openstacks_default    = 0               " Open stackframes window, Default: 0
let g:neodbg_openthreads_default   = 0               " Open threads window, Default: 0
let g:neodbg_openlocals_default    = 1               " Open locals window, Default: 1
let g:neodbg_openregisters_default = 0               " Open registers window, Default: 0

let g:neodbg_keymap_toggle_breakpoint  = '<F9>'         " toggle breakpoint on current line
let g:neodbg_keymap_next               = '<F10>'        " next
let g:neodbg_keymap_run_to_cursor      = '<C-F10>'      " run to cursor (tb and c)
let g:neodbg_keymap_jump               = '<C-S-F10>'    " set next statement (tb and jump)
let g:neodbg_keymap_step_into          = '<F11>'        " step into
let g:neodbg_keymap_step_out           = '<S-F11>'      " setp out
let g:neodbg_keymap_continue           = '<F5>'         " run or continue
let g:neodbg_keymap_print_variable     = '<C-P>'        " view variable under the cursor
let g:neodbg_keymap_stop_debugging     = '<S-F5>'       " stop debugging (kill)
let g:neodbg_keymap_toggle_console_win = '<F6>'         " toggle console window
let g:neodbg_keymap_terminate_debugger = '<C-C>'        " terminate debugger

let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#tabline#enabled      = 1
let g:airline#extensions#branch#enabled       = 1


let g:ctrlp_map = '<C-o>'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

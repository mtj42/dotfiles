execute pathogen#infect()

syntax on
colorscheme badwolf

filetype plugin indent on
set cursorline
set smartindent
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nu
set backspace=2 " Fix backspace key; forget why this is needed
" set textwidth=80 " Word-wrap
" set breakindent
set ruler

let mapleader=","

" inoremap <Esc> <nop> " cruel and unnecessary
inoremap jj <Esc>

" Don't really know why I need this but it fixes a paste bug caused by the inoremap
set t_BE=

noremap j gj
noremap k gk

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
noremap ; :
noremap : ;

" nnoremap <leader>p ofrom IPython import embed; embed()<ESC>

" Copy highlighted text to system clipboard
map <silent> <C-c> ;call CopyVisual()<CR>
" nnoremap <C-c> "+y

" Paste from system clipboard with Ctrl+p
nmap <C-p> ;call ToggleAndPaste()<CR>

" vim-markdown-folding
nnoremap <Space> za
nnoremap <C-m> zMzv


" auto-format JSON with ;json
nmap <Leader>json ;%!python -m json.tool<CR>

" auto-format XML with ;XML
nmap <Leader>xml ;%!xmllint --format %<CR>

" Two space tab for html
autocmd FileType html,css,js,jsx setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType md setlocal syntax=OFF

" Copy highlighted text to clipboard
function! CopyVisual()
    normal gv"cy
    :call system('pbcopy', @c)
endfunction

" Paste from system clipboard
function! ToggleAndPaste()
    set paste
    put +
    set paste!
endfunction

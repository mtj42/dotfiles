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
set backspace=2 " Fix backspace key because it's being dumb
"set textwidth=80 " Word-wrap
" set breakindent
set ruler

let mapleader=","

" inoremap <Esc> <nop> " cruel and unnecessary
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

" Fix paste bug triggered by the above inoremaps
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

" Yank from Vim into system 
map <silent> <C-c> ;call CopyVisual()<CR>
" nnoremap <C-c> "+y

" paste
nmap <C-p> ;call ToggleAndPaste()<CR>

" vim-markdown-folding
nnoremap <Space> za
nnoremap <C-m> zMzv


" auto-format JSON
nmap <Leader>json ;%!python -m json.tool<CR>

" auto-format XML
nmap <Leader>xml ;%!xmllint --format %<CR>


" delete trailing whitespace
" nmap <Leader>ws :%s/\s\+$//<CR>

" replace multiple spaces with single space in current selection
" vmap <Leader>wo :s![^ ]\zs  \+! !g<CR>

" NERDTree
" nmap <Leader>nt :NERDTreeToggle<CR>

" Two space tab for html
autocmd FileType html,css,js,jsx setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType md setlocal syntax=OFF

function! CopyVisual()
    normal gv"cy
    :call system('pbcopy', @c)
endfunction

" Thank you @dkaman for this function
function! ToggleAndPaste()
    set paste
    put +
    set paste!
endfunction

set langmap=å[,æ]Å{,Æ}
let mapleader = " "

set number
set relativenumber


" BASIC ACTIONS

nnoremap <leader>q :q<CR>
nnoremap <leader>ww :w<CR>
nnoremap <leader>wa :a<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>so :so %<CR>

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap \| @w
" nnoremap <leader>no :nohlsearch<CR>
nnoremap J mzJ`z


" OPERATOR PENDING

onoremap ig i"
onoremap ag a"

onoremap aG a'
onoremap iG i'

onoremap iv i[
onoremap av a[

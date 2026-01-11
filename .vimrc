set langmap=å[,æ]Å{,Æ}
let mapleader = " "

set number
set relativenumber
set path=**


" BASIC ACTIONS

nnoremap <leader>q :q<CR>
nnoremap <leader>ww :w<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>so :so %<CR>
nnoremap <C-p> :find 

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap \| @w
nnoremap J mzJ`z
nnoremap <leader>n /
nnoremap <leader><leader>n ?


" OPERATOR PENDING

onoremap ig i"
onoremap ag a"

onoremap aG a'
onoremap iG i'

onoremap iv i[
onoremap av a[


function! JSXIsSelfCloseTag(mode)
  let l:line_number = line(".")
  let l:line = getline(".")
  let l:tag_name = matchstr(matchstr(line, "<\\w\\+"), "\\w\\+")

  exec "normal! 0f<vat\<esc>"

  cal cursor(line_number, 1)

  let l:selected_text = join(getline(getpos("'<")[1], getpos("'>")[1]))

  let l:match_tag = matchstr(matchstr(selected_text, "</\\w\\+>*$"), "\\w\\+")

  return tag_name != match_tag
endfunction

function! JSXSelectTag(mode)
  if JSXIsSelfCloseTag(a:mode)
    if a:mode == "v"
      exec "normal! \<esc>0f<v/\\/>$\<cr>l"
    else
      exec "normal! \<esc>0f<v/\\/>$\<cr>l" . a:mode
    endif
  else
    exec "normal! \<esc>0f<" . a:mode . "at"
  end
endfunction

nnoremap vat :call JSXSelectTag("v")<CR>
nnoremap yat :call JSXSelectTag("y")<CR>
nnoremap dat :call JSXSelectTag("d")<CR>
nnoremap cat :call JSXSelectTag("v")<CR>c



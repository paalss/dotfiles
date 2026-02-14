set langmap=å[,æ]Å{,Æ}
let mapleader = " "

set number
set relativenumber
set incsearch
set path=**


" BASIC ACTIONS

inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>W :wa<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>so :so %<CR>
nnoremap <C-p> :find 

nnoremap <tab> >>
nnoremap <S-tab> <<
vnoremap <tab> >>gv
vnoremap <S-tab> <<gv

nnoremap << <nop>
nnoremap >> <nop>
vnoremap << <nop>
vnoremap >> <nop>

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap \| @w
nnoremap J mzJ`z
nnoremap <leader>n /
nnoremap <leader><leader>n ?
vnoremap <leader>n /
vnoremap <leader><leader>n /


" OPERATOR PENDING

onoremap ic i"
onoremap ac a"

onoremap aC a'
onoremap iC i'

onoremap ir i[
onoremap ar a[


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

" https://stackoverflow.com/questions/68651723/vimdiff-files-between-git-branches
" function! Diff(spec)
"     vertical new
"     setlocal bufhidden=wipe buftype=nofile nobuflisted noswapfile
"     let cmd = "++edit #"
"     if len(a:spec)
"         let cmd = "!git -C " . shellescape(fnamemodify(finddir('.git', '.;'), ':p:h:h')) . " show " . a:spec . ":#"
"     endif
"     execute "read " . cmd
"     silent 0d_
"     diffthis
"     wincmd p
"     diffthis
" endfunction
" command! -nargs=? Diff call Diff(<q-args>)

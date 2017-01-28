scriptencoding utf-8


" https://gist.github.com/mmisono/436443
function! s:find_next_help_tagjump(flag)
  let orig_view = winsaveview()
  let helpHyperTextJump = '\\\@<!|[^"*|]\+|'
  let helpOption1 = "'[a-z]\\{2,\\}'"
  let helpOption2 = "'t_..'"
  let regex = join([helpHyperTextJump, helpOption1, helpOption2], '\|')
  while search(regex, a:flag) > 0
    if synIDattr(synID(line('.'), col('.'), 0), 'name') =~# '^\(helpBar\|helpOption\)$'
      return
    endif
  endwhile
  call winrestview(orig_view)
endfunction


nnoremap <buffer> <silent><Tab>   :<C-u>call <SID>find_next_help_tagjump('W')<CR>
nnoremap <buffer> <silent><S-Tab> :<C-u>call <SID>find_next_help_tagjump('bW')<CR>
nnoremap <buffer> <CR> <C-]>
nnoremap <buffer> B <C-T>
nnoremap <buffer> q :<C-u>close<CR>

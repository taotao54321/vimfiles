scriptencoding utf-8


function! s:cmd_kill_line()
  return strpart(getcmdline(), 0, getcmdpos() - 1)
endfunction


" 不要な割り当てを潰す
nnoremap Q <Nop>
nnoremap ZQ <Nop>
nnoremap ZZ <Nop>
nnoremap <Space> <Nop>
nnoremap <C-h> <Nop>
nnoremap <C-n> <Nop>
nnoremap <C-p> <Nop>

inoremap <C-@> <Nop>


" ヘルプ(2連打でカーソル下の単語を引く)
nnoremap <C-h>      :<C-u>help<Space>
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><CR>

" j/k で物理行移動
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" Ctrl-n / Ctrl-p で quickfix 内移動
nnoremap <silent><C-n> :<C-u>cn<CR>
nnoremap <silent><C-p> :<C-u>cp<CR>


" ESC 2回で :noh
nnoremap <silent><Esc><Esc> :<C-u>nohlsearch<CR>


" Y で行末までヤンク
nnoremap Y y$


" emacs 風 cmdline
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-k> <C-\>e<SID>cmd_kill_line()<CR>

" cmdline ヒストリ補完
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <Up> <C-p>
cnoremap <Down> <C-n>


" 誤爆防止
cabbrev wq w

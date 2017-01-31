scriptencoding utf-8


set history=1000
set viminfo='100,<500,n$HOME/.cache/vim/info/viminfo

set undofile
set undodir=$HOME/.cache/vim/undo/

set backup
set backupdir=$HOME/.cache/vim/backup/

set swapfile
set directory=$HOME/.cache/vim/swap/

set viewoptions-=options
set viewdir=$HOME/.cache/vim/view/


augroup vimrc
  " ファイルを開いたときカーソル位置を復元
  autocmd BufReadPost *
    \ if line('''"') > 0 && line('''"') <= line('$') |
    \   execute 'normal! g`"' |
    \ endif
augroup END

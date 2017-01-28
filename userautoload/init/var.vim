scriptencoding utf-8


set history=1000
set viminfo='100,<500,n$HOME/.vim/var/info/viminfo

set undofile
set undodir=$HOME/.vim/var/undo/

set backup
set backupdir=$HOME/.vim/var/backup/

set swapfile
set directory=$HOME/.vim/var/swap/

set viewoptions-=options
set viewdir=$HOME/.vim/var/view/


augroup vimrc
  " ファイルを開いたときカーソル位置を復元
  autocmd BufReadPost *
    \ if line('''"') > 0 && line('''"') <= line('$') |
    \   execute 'normal! g`"' |
    \ endif
augroup END

set encoding=utf-8
scriptencoding utf-8


set noexrc
set nomodeline


augroup vimrc
  autocmd!
augroup END


runtime! userautoload/init/*.vim
runtime  userautoload/dein/dein.vim


source $HOME/.vim/site.vim


set secure

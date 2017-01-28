scriptencoding utf-8


set showcmd
set laststatus=2


set showmatch
set matchtime=1


set wrap
set display=lastline


set list
set listchars=tab:>\ ,trail:-,extends:\\,nbsp:%


set visualbell t_vb=


set t_Co=256

augroup vimrc
  " 検索文字列
  autocmd VimEnter,Colorscheme * highlight Search ctermfg=black ctermbg=lightgreen

  " tab, 行末 space
  autocmd VimEnter,Colorscheme * highlight SpecialKey ctermfg=lightblue

  " 全角空白
  autocmd Colorscheme * highlight ZenkakuSpace ctermbg=red
  autocmd VimEnter,WinEnter,Syntax * syntax match ZenkakuSpace containedin=ALL /　/

  " Unicode spaces
  " https://www.cs.tut.fi/%7Ejkorpela/chars/spaces.html
  autocmd Colorscheme * highlight UnicodeSpaces ctermbg=lightred
  autocmd VimEnter,WinEnter,Syntax * syntax match UnicodeSpaces containedin=ALL /\%u180E\|\%u2000\|\%u2001\|\%u2002\|\%u2003\|\%u2004\|\%u2005\|\%u2006\|\%u2007\|\%u2008\|\%u2009\|\%u200A\|\%u2028\|\%u2029\|\%u202F\|\%u205F/
augroup END

colorscheme default
set background=dark

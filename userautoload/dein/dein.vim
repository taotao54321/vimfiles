scriptencoding utf-8


let s:DEIN_BASE  = expand('~/.cache/vim/dein')
let s:DEIN_REPOS = s:DEIN_BASE . '/repos/github.com/Shougo/dein.vim'
let s:DEIN_TOML  = expand('~/.vim/userautoload/dein/dein.toml')


if !isdirectory(s:DEIN_REPOS)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:DEIN_REPOS))
endif
execute 'set runtimepath^=' . s:DEIN_REPOS


if dein#load_state(s:DEIN_BASE)
  call dein#begin(s:DEIN_BASE)
  call dein#load_toml(s:DEIN_TOML)
  call dein#end()
  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif


filetype plugin on
filetype indent on
syntax enable

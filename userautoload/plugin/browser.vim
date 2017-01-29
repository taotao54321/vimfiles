scriptencoding utf-8


let g:openbrowser_search_engines = {
  \ 'google' : 'https://www.google.com/search?q={query}&ie=utf-8&oe=utf-8&hl=en&gl=us&gws_rd=cr&pws=0',
\}


let g:netrw_nogx = 1

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

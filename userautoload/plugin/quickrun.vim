scriptencoding utf-8


let g:quickrun_config={
  \ '_' : {
  \   'outputter/buffer/into'  : 1,
  \   'outputter/buffer/split' : 'botright',
  \ },
  \ 'markdown' : {
  \   'type'      : 'markdown/markdown',
  \   'outputter' : 'browser',
  \ },
  \ 'rst' : {
  \   'type'      : 'rst/rst2html',
  \   'outputter' : 'browser',
  \ },
  \
  \ 'markdown/markdown' : {
  \   'command' : 'markdown',
  \ },
  \ 'rst/rst2html' : {
  \   'command' : 'rst2html',
  \ },
\}

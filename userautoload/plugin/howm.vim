scriptencoding utf-8


let g:howm_dir=expand('~/.howm/')
let g:howm_filename='%Y/%m/%Y-%m-%d-%H%M%S.txt'
let g:howm_fileencoding='utf-8'
let g:howm_fileformat='unix'

let g:QFixHowm_keywordfile=expand('~/.howm/keys')

let g:QFixHowm_FileType='markdown'
let g:QFixHowm_Title='#'
let g:QFixMRU_Title={}
let g:QFixMRU_Title['mkd']='^#[^#]'
let g:QFixMRU_Title['mkd_regxp']='^#[^#]'

let g:QFixHowm_Template=['# %TAG%', '']
let g:QFixHowm_Autoformat=0

let g:QFixHowm_Key='g'
let g:QFixHowm_KeyB=','

let g:QFix_CloseOnJump=1

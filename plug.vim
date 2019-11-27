call plug#begin(g:configFolder.'/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor -hidden -g ""'

" Ack/Ag settings
noremap <leader>a :Ack!<Space>
if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --column'
endif
" highlight seaching keyword
" let g:ackhighlight = 1

" PaperColor color scheme
colorscheme PaperColor

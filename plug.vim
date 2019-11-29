call plug#begin(g:configFolder.'/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-ruby/vim-ruby'
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
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" ruby extesion config
set nocompatible " We're running Vim not Vi!

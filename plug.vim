" vim-plug management
call plug#begin(g:configFolder.'/plugged')
Plug 'kien/ctrlp.vim' " quick find file plugin
" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor -hidden -g ""'

Plug 'mileszs/ack.vim' " quick find content in directory plugin
" Ack/Ag settings
noremap <leader>a :Ack!<Space>
if executable('ag')
  let g:ackprg = 'ag --vimgrep --nogroup --column'
endif
" highlight seaching keyword
let g:ackhighlight = 1

" Application
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Plug 'NLKNguyen/papercolor-theme' " papercolor theme
Plug 'dracula/vim'

" language support
Plug 'vim-ruby/vim-ruby' " ruby language support plugin
Plug 'elzr/vim-json' " json syntax highlight

" UI
Plug 'luochen1990/rainbow' " rainbow parentheses
let g:rainbow_active = 1

Plug 'vim-airline/vim-airline' " vim status airline
Plug 'vim-airline/vim-airline-themes' " ariline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
" let g:airline_section_b = '%{strftime("%H:%M")}'
let g:airline_theme='molokai'

call plug#end()

" packadd! {name}
colorscheme dracula

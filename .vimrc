se nu
set wrapmargin=5
set mouse=a
set foldmethod=indent
syntax on
set nocompatible
set t_Co=256
set background=dark
set guifont=Monospace:h20
set wrap
set breakindent
set linebreak
let g:airline_powerline_fonts = 1


set clipboard=unnamedplus
filetype off
hi Comment ctermfg=DarkGray
set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vim-snipmate/autoload/snipMate_python_demo.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set path+=**
set wildmenu
set textwidth=0
set wrapmargin=0

"for multiple_cursors
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual
set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
call vundle#begin()
Plugin 'nerdtree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'powerline'
Plugin 'command-t'
Plugin 'surround.vim'
Plugin 'vim-matchit'
Plugin 'ultisnips'
Plugin 'vim-snippets'
Plugin	'tcomment_vim'
Plugin	'auto-pairs'
"Plugin	'vim-autoformat'
Plugin 'vim-bootstrap4-snippets'
Plugin 'vim-airline'
Plugin 'conoline.vim'
Plugin 'vim-multiple-cursors'
Plugin 'vim-jst'
call vundle#end()

filetype plugin indent on
autocmd FileType java setlocal omnifunc=javacomplete#Complete
au FileType javascript :UltiSnipsAddFiletypes javascript

let g:snippets_dir = '~/.vim/bundle/vim-snippets/snippets'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:neocomplete#enable_at_startup = 1

let g:conoline_auto_enable = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set selection=inclusive

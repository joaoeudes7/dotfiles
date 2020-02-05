set number	
set linebreak	
set showbreak=+++ 	
set textwidth=180	
set showmatch	
set visualbell	

set hlsearch	
set smartcase	
set ignorecase	
set incsearch	

set autoindent	
set expandtab	
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4	

set ruler	

set undolevels=1000	
set backspace=indent,eol,start	

syntax on
filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'wakatime/vim-wakatime'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'sbdchd/neoformat'
Plug 'terryma/vim-multiple-cursors'
Plug 'posva/vim-vue'
Plug 'tmhedberg/SimpylFold'
Plug 'neomake/neomake'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/syntastic'

call plug#end()

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

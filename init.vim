
syntax on 
set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set relativenumber
set number
set numberwidth=1
set noswapfile
set nobackup 
set incsearch 
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set splitbelow
set splitright
set colorcolumn=130
set termguicolors


highlight ColoColumn ctermbg=0 guibg=lightgrey



call plug#begin('~/.local/shar/nvim/plugged')
  "temas
  Plug 'crusoexia/vim-monokai'
  Plug 'sainnhe/edge'
  Plug 'ayu-theme/ayu-vim'
  Plug 'sainnhe/sonokai'
  Plug 'morhetz/gruvbox'
  Plug 'tomasr/molokai'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'joshdick/onedark.vim'

  "plugins web
  Plug 'mattn/emmet-vim'
  Plug 'eslint/eslint'
  Plug 'dikiaap/minimalist'
  Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
  Plug 'leafgarland/typescript-vim'
  Plug 'tasn/vim-tsx'
  
  Plug 'yggdroot/indentline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'lilydjwg/colorizer'
  
  "Git integration
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  
  "funcionalidad 
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'KabbAmine/vCoolor.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'rust-lang/rust.vim'
  Plug 'cespare/vim-toml'
  Plug 'vim-python/python-syntax'
  Plug 'neoclide/coc-snippets'
  Plug 'shawncplus/phpcomplete.vim'
  Plug 'jwalton512/vim-blade'
  Plug 'noahfrederick/vim-laravel'
  Plug 'majutsushi/tagbar' 
  Plug 'neoclide/coc-highlight'
  Plug 'scrooloose/nerdcommenter'
  Plug 'honza/vim-snippets'
  Plug 'sirver/ultisnips'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mattn/emmet-vim'
  Plug 'rhysd/vim-clang-format'
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}  
  Plug 'sheerun/vim-polyglot'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call  plug#end()

set background=dark

let ayucolor="dark"
let g:gruvbox_contrast_dark="medium"

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1

colorscheme tokyonight


let g:coc_disable_startup_warning = 1

let mapleader = " "


"teclas nuevas" 
            
nmap <F5> :source %<CR>
vmap <F5> :source %<CR>               
nnoremap <leader>w :w<CR>
nnoremap <leader>a :q<CR>

nnoremap <leader>e :e $MYVIMRC<CR>

vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>

" Moverse al buffer siguiente con <l??der> + k
nnoremap <leader>k :bnext<CR>

" Moverse al buffer anterior con <l??der> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <l??der> + q
nnoremap <leader>q :bdelete<CR>

"crear una nueva ventana
nnoremap <leader>t :tabe<CR>

"hacer un split vertical
nnoremap <leader>vs :vsp<CR>

"hacer un split horizontal
nnoremap <leader>sp :sp<CR>


"Configuration of FZF
let g:fzf_preview_window = 'right:40%'
nnoremap <c-p> :Files<CR>
nnoremap <c-g> :GitFiles<CR>
" use current git repo/file director with ctrl p
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0

"NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Mapeo del explorador de archivos
let g:NERDTreeChDirMode = 2 "Cambia el directorio actual al nodo padre actual
map <leader><tab> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '???'
let g:NERDTreeDirArrowCollapsible = '???'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Vim devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"Mapeo de la barra de estado airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pesta??as)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar s??lo el nombre del archivo
let g:airline_powerline_fonts = 1 " Modifica los separadores para que tengan forma de triangulos
let g:airline_theme='tomorrow'

"signify
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '???'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk

" If you like colors instead
highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

nnoremap / /a<DEL>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"vim emmet configuration
let g:user_emmet_leader_key='<C-Z>'

"easymotion
nmap <leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1

"Rust configuration
let g:rustfmt_autosave = 1

"prettier configuration for vim
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"configuring the highlight devicons
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"configuring clang
let g:clang_format#auto_format = 1

"indentline
let g:indentLine_char_list = ['???', '???']


 "configuracion de coc
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver', 'coc-html', 'coc-emmet', 'coc-css', 'coc-prettier', 'coc-snippets', 'coc-tslint']

"emmet
let g:user_emmet_install_global=0
autocmd FileType html,css,javascript.jsx EmmetInstall


let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}


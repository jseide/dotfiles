set secure exrc
set nu 
set autowrite
"set nohlsearch
"set hidden
"set noerrorbells
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set smartindent
set nowrap
set incsearch
set termguicolors
set scrolloff=8
"set noshowmode
"set completeopt=menuone,noinsert,noselect
"set signcolumn=yes
set colorcolumn=80
"set cmdheight=2
"set updatetime=50
"set clipboard=unnamed
set autoindent
set fileformat=unix
set background=dark


" Default to not read-only in vimdiff
set noro

"undotree settings I think
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

au BufNewFile,BufRead *.py :set encoding=utf-8

call plug#begin('~/.vim/plugged')
"Plug 'pixelneo/vim-python-docstring'
"Plug 'vim-scripts/indentpython.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'jremmen/vim-ripgrep'
"Plug 'tpope/vim-fugitive'
"Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
"Plug 'dense-analysis/ale'
"Plug 'szw/vim-maximizer'
"Plug 'edkolev/tmuxline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
highlight ColorColumn ctermbg=0 guibg=lightgrey
"filetype plugin on

if executable('rg')
    let g:rg_derive_root='true'
endif
let g:ycm_autoclose_preview_window_after_completion=1
let g:ctrlp_user_command=['.git/','git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:ctrlp_use_caching = 0
let g:netrw_browse_split = 4
let g:netrw_preview = 1
let g:netrw_banner = 0
let g:NERDAltDelims_c = 1

 
"let g:tmuxline_preset = 'full'
"let python_highlight_all=1

" Freed <C-l> in Netrw
nmap <leader><leader><leader><leader><leader><leader>l <Plug>NetrwRefresh

"map <C-j> :wincmd j<CR>
"map <C-k> :wincmd k<CR>
"map <C-h> :wincmd h<CR>
"map <C-l> :wincmd l<CR> 
"nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
"nnoremap <leader>ps :Rg<SPACE>
"nnoremap <silent> <leader>+ :vertical resize +5<CR>
"nnoremap <silent> <leader>- :vertical resize -5<CR>
"nnoremap <leader>t :botright terminal ++rows=15<cr>
nnoremap <silent> <leader>g :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>f :YcmCompleter FixIt<CR>
map <C-_> <leader>c<space>

let g:ycm_python_interpreter_path = '~/anaconda3/envs/ml/bin/python'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim/global_extra_conf.py'

"Add something like this to your Zephyr project vimrc
"let g:ycm_clangd_args=['--query-driver=/opt/gnuarmemb/gcc-arm-none-eabi-9-2019-q4-major/bin/arm-none-eabi-gcc']
"let g:ycm_filter_diagnostics = {
  "\ "c": {
  "\      "regex": [ "-mfp16-format=ieee", "-fno-reorder-functions" ],
  "\      "level": "warning", 
  "\    }
  "\ }

"let g:ale_fixers = {
            "\   '*': ['remove_trailing_lines', 'trim_whitespace'],
            "\   'python': ['autopep8','yapf','autoimport','isort']
            "\}

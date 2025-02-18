syntax on
"set secure exrc
set nu 
set autowrite
"set nohlsearch
"set hidden
"set noerrorbells
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround       "round the jumps equivalent to multiple of shiftwidth
set smartcase
set smartindent
set autoindent
set nowrap
set incsearch
set termguicolors
set scrolloff=8
set background=dark
"set noshowmode
"set completeopt=menuone,noinsert,noselect
"set signcolumn=yes
"set cmdheight=2
"set updatetime=50
"set clipboard=unnamed
"set fileformat=unix
"set spell spelllang=en_us     "enable spelllll chack with language = en_us
"hi clear SpellBad           "clear highlight
"hi SpellBad cterm=underline
set ignorecase                "ignorecase while search"
"set noro " Default to not read-only in vimdiff
set mouse=a
filetype plugin indent on "vim-commentary requirement

"undotree settings 
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

au BufNewFile,BufRead *.py :set encoding=utf-8

call plug#begin('~/.vim/plugged')
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'gruvbox-community/gruvbox'
"Plug 'jremmen/vim-ripgrep'
"Plug 'pixelneo/vim-python-docstring'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'vim-utils/vim-man'
"Plug 'lyuts/vim-rtags'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'mbbill/undotree'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'preservim/nerdcommenter'
"Plug 'dense-analysis/ale'
"Plug 'szw/vim-maximizer'
"Plug 'edkolev/tmuxline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey
"filetype plugin on

if executable('rg')
    let g:rg_derive_root='true'
endif
"let g:ycm_autoclose_preview_window_after_completion=1
let g:ctrlp_user_command=['.git/','git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:ctrlp_use_caching = 0
let g:netrw_browse_split = 4
let g:netrw_preview = 1
"let g:netrw_banner = 0
"let g:NERDAltDelims_c = 1 "use alternative comments for C Language

"let g:tmuxline_preset = 'full'?"
"let python_highlight_all=1

" Freed <C-l> in Netrw
"nmap <leader><leader><leader><leader><leader><leader>l <Plug>NetrwRefresh

"map <C-j> :wincmd j<CR>
"map <C-k> :wincmd k<CR>
"map <C-h> :wincmd h<CR>
"map <C-l> :wincmd l<CR> 
"nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nmap <C-_> gcc
vmap <C-_> gc



nnoremap <leader>ps :Rg<SPACE>
"nnoremap <silent> <leader>+ :vertical resize +5<CR>
"nnoremap <silent> <leader>- :vertical resize -5<CR>
"nnoremap <leader>t :botright terminal ++rows=15<cr>
"nnoremap <silent> <leader>g :YcmCompleter GoTo<CR>
"nnoremap <silent> <leader>f :YcmCompleter FixIt<CR>
"map <C-_> <leader>c<space>

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-n>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:ale_completion_enabled = 1
let g:ale_linters = {'python': ['pylsp']}
"let g:ale_python_auto_virtualenv = 1
"call ch_logfile(expand('/tmp/chlogfile.log'), 'w')
"let g:ale_fixers = {
            "\   '*': ['remove_trailing_lines', 'trim_whitespace'],
            "\   'python': ['autopep8','yapf','autoimport','isort']
            "\}
            "
"Plugins:
" gruvbox-community/gruvbox
" jremmen/vim-ripgrep
" ctrlpvim/ctrlp.vim
" mbbill/undotree
" christoomey/vim-tmux-navigator
" dense-analysis/ale
" tpope/vim-commentary
" UltiSnips


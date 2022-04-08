call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'arcticicestudio/nord-vim'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-css', 'coc-cssmodules', 'coc-docker', 'coc-emmet', 'coc-eslint', 'coc-highlight', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tailwindcss', 'coc-tsserver', 'coc-pairs']
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
if (has("nvim"))
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
endif
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'akinsho/toggleterm.nvim'
call plug#end()
 
syntax on
set nu              
set tabstop=2    
set softtabstop=2
set shiftwidth=2
set expandtab  
set smarttab   
set smartindent 
set hidden      
set incsearch   
set ignorecase    
set smartcase     
set scrolloff=8   
set signcolumn=yes
set cmdheight=2   
set updatetime=100
set encoding=utf-8
set nobackup      
set nowritebackup 
set splitright    
set splitbelow    
set autoread      
filetype on       
filetype plugin on
filetype indent on

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'
colorscheme sonokai

if (has("nvim")) "Transparent background. Only for nvim
    highlight Normal guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
endif

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

nmap <C-n> :NERDTreeToggle<CR>

if (has("nvim"))
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>
endif

let g:toggleterm_terminal_mapping = '<C-t>'
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm size=4"<CR>

nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm size=4"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm size=4"<CR>

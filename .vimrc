"general setting
map <F5> :w <bar> !g++ -std=c++14 -O2 -Wall % -o %:r && %:r.exe <CR>
set hlsearch
"set fileencodings=utf-8,cp936
set guifont=Courier_New:h12:b:cANSI:qDRAFT
set number relativenumber
" set leader key
"let g:mapleader = "\<Space>"
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap                              " Display long lines as just one line
"set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
"set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
"set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set ignorecase
"set autochdir                           " Your working directory will always be the same as your working directory
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" You can't stop me
cmap w!! w !sudo tee %
cmap w w!
"solve luanma problem
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")  
 set fileencoding=chinese  
else   
 set fileencoding=utf-8 
endif
"解决菜单乱码  
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim  
"解决consle输出乱码  
language messages zh_CN.utf-8 
set gfn=Consolas:h11
set cindent




"source ~/plug.vim
" Plugins will be downloaded under the specified directory.
call plug#begin('~/vimfile/plugin')


    " File Explorer
    "Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    "Plug 'jiangmiao/auto-pairs'
    "Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    "Plug 'junegunn/goyo.vim'
    "Plug 'Yggdroot/indentLine'
"    Plug 'yianwillis/vimcdoc'
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()



" key map
let mapleader = " "
nmap <tab> :bn<CR>
nmap <leader>t :NERDTree<CR>
nmap <leader>g :Goyo<CR>


call plug#begin('~/.nvim/plugged')

    " The bar at the bottom
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    
    " Highlights copied data
    Plug 'machakann/vim-highlightedyank'
    " cd's to closest git repo
    Plug 'airblade/vim-rooter'
    " fzzzfffff
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    " Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Project management
    Plug 'mhinz/vim-startify'
    " Git Integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Jumping around with Sneak
    Plug 'justinmk/vim-sneak'
    " Quickscope
    Plug 'unblevable/quick-scope'
    " Colorizer
    Plug 'lilydjwg/colorizer'
    Plug 'junegunn/rainbow_parentheses.vim'
    " WhichKey
    Plug 'liuchengxu/vim-which-key'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " nnn File Manager
    Plug 'mcchrish/nnn.vim'
     
    " Vim HardTime
    Plug 'takac/vim-hardtime'

    " NERDCommenterToggle
    Plug 'preservim/nerdcommenter'
call plug#end()

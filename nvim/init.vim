" Python
let g:python3_host_prog = '/usr/local/bin/python3.11'

" vim-plug
call plug#begin()

" Plugins
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'gioele/vim-autoswap'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ojroques/vim-oscyank', {'branch': 'main'}
Plug 'preservim/nerdtree'
Plug 'romainl/vim-cool'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'unblevable/quick-scope'
Plug 'preservim/tagbar'
Plug 'tpope/vim-sleuth'

" Language Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
Plug 'cespare/vim-toml'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'google/vim-jsonnet'
Plug 'hashivim/vim-terraform'
Plug 'pangloss/vim-javascript'

" finish loading vim-plug
call plug#end()

" Base configs
source ~/.config/nvim/main.vim
source ~/.config/nvim/plugin-config/coc.vim

" Plugin config
source ~/.config/nvim/plugin-config/airline.vim
source ~/.config/nvim/plugin-config/ale.vim
source ~/.config/nvim/plugin-config/jedi-vim.vim
source ~/.config/nvim/plugin-config/nerdtree.vim
source ~/.config/nvim/plugin-config/quick-scope.vim
source ~/.config/nvim/plugin-config/vim-autoswap.vim
source ~/.config/nvim/plugin-config/vim-cool.vim
source ~/.config/nvim/plugin-config/vim-gitgutter.vim
source ~/.config/nvim/plugin-config/vim-go.vim
source ~/.config/nvim/plugin-config/vim-jsonnet.vim
source ~/.config/nvim/plugin-config/vim-markdown.vim
source ~/.config/nvim/plugin-config/vim-sneak.vim
source ~/.config/nvim/plugin-config/vim-terraform.vim
source ~/.config/nvim/plugin-config/tagbar.vim

" Language settings (no plugins)
source ~/.config/nvim/lang/bash.vim
source ~/.config/nvim/lang/css.vim
source ~/.config/nvim/lang/dot.vim
source ~/.config/nvim/lang/git.vim
source ~/.config/nvim/lang/go.vim
source ~/.config/nvim/lang/html.vim
source ~/.config/nvim/lang/javascript.vim
source ~/.config/nvim/lang/java.vim
source ~/.config/nvim/lang/jsonnet.vim
source ~/.config/nvim/lang/json.vim
source ~/.config/nvim/lang/make.vim
source ~/.config/nvim/lang/markdown.vim
source ~/.config/nvim/lang/python.vim
source ~/.config/nvim/lang/yaml.vim


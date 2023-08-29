:nmap <space>e <Cmd>CocCommand explorer<CR>
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'

" Navigating files
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim' " fuzzy finder, like cmd-P in VSCode
Plug 'rbgrouleff/bclose.vim' " dependency for ranger
Plug 'francoiscabrol/ranger.vim' " file browser using vim keybindings
" tmux integration
Plug 'christoomey/vim-tmux-navigator' " move between vim and tmux 
" Should be paired with accompanying tmux plug
" set -g @plugin 'christoomey/vim-tmux-navigator'
"

" colorschemes
Plug 'arcticicestudio/nord-vim' " nice, but maybe too dark
Plug 'bluz71/vim-nightfly-guicolors'

" statusline
Plug 'bluz71/vim-moonfly-statusline' "minimal statusline

" Editing
Plug 'justinmk/vim-sneak' " jump around with s + 2 characters
Plug 'tpope/vim-surround' " quicky wrap text with quotes/brackets/markup
Plug 'tpope/vim-commentary' " commenting made easier
Plug 'mattn/emmet-vim' " expand abbreviations to html/css
Plug 'neoclide/coc.nvim', {'branch': 'release'} " intellisense engine for vim
"git
Plug 'airblade/vim-gitgutter' " show git status in gutters
Plug 'jreybert/vimagit' " visualise, stage hunks, write commit messages, in vim
Plug 'tpope/vim-fugitive' " another vim visualiser, a lot faster than vimagit but also not as good for handling hunks 

"Writing
Plug 'godlygeek/tabular' " aligning things
Plug 'plasticboy/vim-markdown' " md syntax highlighting and things
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' } " browser-based realtime markdown preview

" JS/TS
Plug 'chemzqm/vim-jsx-improve' " uses vim-javascript and vim-jsx-pretty
Plug 'HerringtonDarkholme/yats.vim' " ts syntax highlighter
Plug 'peitalin/vim-jsx-typescript' " highlighting for jsx in ts
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " for styled or css syntax in js/ts files
" gql
Plug 'jparise/vim-graphql' " graphql syntax highlighter

call plug#end()


"#####################################################################################################
"                           ____     __                     _                 
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  ) 
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/  
"                                              /____/
"######################################################################################################

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

Plug 'jreybert/vimagit'
Plug 'ap/vim-css-color'

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" Code Snippets Engine
Plug 'SirVer/ultisnips'

" Snippets for ultisnips
Plug 'honza/vim-snippets'

" Vim Surround
Plug 'tpope/vim-surround'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"" Indent guides
Plug 'Yggdroot/indentLine'

" Custom start page
Plug 'mhinz/vim-startify'

" Vim Javascript
Plug 'pangloss/vim-javascript'

" Language Packs
let g:polyglot_disabled = ['latex']
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tabular auto-align
Plug 'godlygeek/tabular'

" Comfy scroll
Plug 'yuttie/comfortable-motion.vim'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" Tagbar
Plug 'liuchengxu/vista.vim'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Emoji support
Plug 'junegunn/vim-emoji'

" goyo distraction free mode
Plug 'junegunn/goyo.vim'

" LaTeX support
Plug 'lervag/vimtex'

" Wal theme
Plug 'dylanaraps/wal.vim'
Plug 'deviantfero/wpgtk.vim'

" Translator
Plug 'voldikss/vim-translator'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" vim-hexcolor
Plug 'etdev/vim-hexcolor'

" Easy tables in vim
Plug 'dhruvasagar/vim-table-mode'

" VS-Code style minimap
Plug 'wfxr/minimap.vim'

" Easymodion
Plug 'easymotion/vim-easymotion'

Plug 'vimwiki/vimwiki'


call plug#end()

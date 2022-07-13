syntax on
set number
set nocompatible
set encoding=utf-8
set mouse=a
set relativenumber
set termguicolors
set cursorline
" number of spaces in a <Tab>
set tabstop=2 shiftwidth=2 expandtab

" ----- Plugins

call plug#begin('~/.config/nvim/plugged')

" General
Plug 'folke/tokyonight.nvim'
 Plug 'projekt0n/github-nvim-theme'
Plug 'tami5/lspsaga.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'onsails/lspkind-nvim'
 Plug 'windwp/nvim-autopairs'
 Plug 'folke/lsp-colors.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'kyazdani42/nvim-web-devicons'                " Devicons
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'akinsho/bufferline.nvim'                     " Buffers
Plug 'machakann/vim-highlightedyank'               " Highlight yanked text
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
" TERM
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
" AutoCompletion

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Plugins JavaScript
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }


" Plugins Files
Plug 'preservim/nerdtree'

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" Plugin Indent
Plug 'lukas-reineke/indent-blankline.nvim'
"Plugins HTML
Plug 'mattn/emmet-vim'

call plug#end()


" ----Require Plugins Configs

lua require('xhan')

" ---- Colors 
" colorscheme NeoSolarized
set background=dark
colorscheme tokyonight
" ---- EMMET
"
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_settings={
      \ 'javascript':{
        \      'extends': 'jsx'
            \}
        \}

" ---- PRETTIER
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
" nnoremap <C-D> :Prettier <CR>
" ----- NERDTREE
" let NERDTreeQuitOnOpen=1
command! -nargs=0 Eslint :CocCommand eslint.executeAutofix
nnoremap <C-D> :Eslint <CR>
nnoremap <C-S> :NvimTreeToggle <CR>
nnoremap <A-1> :BufferLineCycleNext <CR>
nnoremap <A-2> :BufferLinePickClose <CR>
autocmd FileType html,css EmmetInstall

" TERM
" set 
autocmd TermEnter term://*toggleterm#*
       \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>


" For example: 2<C-t> will open terminal 2
 nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
 inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

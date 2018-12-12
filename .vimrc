let mapleader =" "

" Basics
set nocompatible
filetype plugin on
syntax enable
set encoding=utf-8
set relativenumber

" Enable autocompletion
set wildmode=longest,list,full

" Disable annoying beeping
set noerrorbells
set vb t_vb=

" Disable automatic commenting on newline
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

filetype plugin indent on
" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo<Enter>

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" set tabwidth to 4 instead of 8
set tabstop=4

" options to show whitespace
:set listchars=tab:>-,trail:~,extends:>,precedes:<
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>c :w! \| !compiler <c-r>%<CR><CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

" Enable Goyo by default for mutt writting
" Goyo's width will be the line limit in mutt.
autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo

" Automatically deletes all trailing whitespace on save.
" autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" enable smart indent
set smartindent
" On pressing tab, insert 4 spaces
" set expandtab
" show existing tab with 4 spaces width
" set tabstop=4
" set softtabstop=4
" when indenting with '>', use 4 spaces width
" set shiftwidth=4

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
	set nobackup		" do not keep a backup file, use versions instead
else
	set backup		" keep a backup file (restore to previous version)
	if has('persistent_undo')
		set undofile	" keep an undo file (undo changes after closing)
	endif
endif

if &t_Co > 2 || has("gui_running")
	" Switch on highlighting the last used search pattern.
	set hlsearch
endif

" enable incsearch
set is

" use backup directory
set backupdir=${HOME}/.vimbackups
set directory=${HOME}/.vimbackups

" hardmode to learn vim correctly
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" but also not too hard for now hehe
let g:HardMode_level='wannabe'

" use the X system clipboard
set clipboard=unnamedplus

" set colors for limelight plugin
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Goyo and Limelight setup
let g:goyo_linenr=1
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" jumptag
"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

" pathogen
execute pathogen#infect()

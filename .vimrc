" remap navigation keys
noremap ; l
noremap l k
noremap k j
noremap j h

" enable syntax highlighting
syntax enable

" show line numbers
set relativenumber

" enable smart indent
set smartindent

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

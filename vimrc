" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off         " Required by Vundle to load plugins

""""""""""
" VUNDLE "
""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My plugins
Plugin 'terryma/vim-multiple-cursors'  " SublimeText style multiple cursor
Plugin 'Nagasaki45/nerdcommenter'      " Commenter with selected cherry-picks
Plugin 'flazz/vim-colorschemes'        " Colorschemes
Plugin 'elixir-lang/vim-elixir'

" All of your Plugins must be added before the following line
call vundle#end()

"""""""""""""""""""""""
" BASIC CONFIGURATION "
"""""""""""""""""""""""

set backspace=indent,eol,start  " Allow backspacing over everything in insert mode.
set autoindent                  " Use the previous indent for new lines.
set history=50                  " Keep 50 lines of command line history
set incsearch                   " Do incremental searching
 
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

set expandtab     " TAB inserts spaces
set shiftwidth=4  " Indent by 4 spaces by default

"""""""""""""""""""""""""
" PLUGIN CONFIGURATIONS "
"""""""""""""""""""""""""

let NERDDefaultAlign = 'left'  " Alignment of multi-line comments

""""""""""""""""""""
" BUFFERS WORKFLOW "
""""""""""""""""""""

" Keep edited buffers in the buffer list instead of abandon them
set hidden

" Switch to next / previus buffer easily
nnoremap gb :bn<cr>
nnoremap gB :bp<cr>

""""""""""
" VISUAL "
""""""""""

syntax enable        " Enable syntax highlighting
colorscheme Monokai  " Set colorscheme
set hlsearch         " Highlight search results
set ruler            " Show the cursor position
set showcmd          " Display incomplete commands
set showmode         " Whether in INSERT / REPLACE / ... mode

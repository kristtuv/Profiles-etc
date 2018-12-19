""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = ","
let localmapleader = ","
" Keep Plugin commands between vundle#begin/end.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vundlevim/vundle.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'thinca/vim-quickrun'
Plugin 'itchyny/lightline.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-syntax'
Plugin 'kana/vim-textobj-line'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'valloric/youcompleteme'
"Colortheme plugins
Plugin 'xolox/vim-misc'
Plugin 'junegunn/seoul256.vim'
Plugin 'hdima/python-syntax'
Plugin 'morhetz/gruvbox'
Plugin 'lokaltog/vim-distinguished'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'machakann/vim-swap'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'klen/python-mode'
call vundle#end()            " required
filetype plugin indent on    " required
" filetype plugin on
" filetype indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"All modes mapping
noremap <C-o> :NERDTreeToggle<CR>
noremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
noremap <F3> :noh<CR>

"Insert mode mappings
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap jj <Esc>
" inoremap øø <Esc>
inoremap <C-f> <C-r>"

inoremap ´ `
"normal mode mappings
nnoremap <d-k> 10k
nnoremap <d-j> 10j
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap ø ;
nnoremap Ø ,
nnoremap Y y$
nnoremap <space> :

"Leader mappings
nnoremap <leader>gc :Gcommit %<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <leader>vrc :vsplit $MYVIMRC<cr>
nnoremap <leader>svrc :source $MYVIMRC<cr>
nnoremap <leader>test :vsplit ~/Documents/Testscripts/test.py<cr>
nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leader>D "_d$
nnoremap <leader>pdf :!open '%:r'.pdf<cr> 
nnoremap <leader>doc :call Pydoc()<cr>
nnoremap <leader>p :Shell pydoc 
nnoremap <leader>e oexit()<esc>
" nnoremap <leader>xxx :! 
"User Commands
" command! Mnote vsplit | Note masternote


colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_imporoved_strings = 1
let g:python_highlight_space_errors = 0
let g:python_highlight_builtin_objs = 0
let g:python_highlight_all = 1
syntax on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sets
set background=dark 
set t_Co=256
set autoindent
set tabstop=4
set number
set shiftwidth=4
set expandtab
set wildmode=longest,list,full
set path+=**
set wildmenu
set laststatus=2
set noshowmode
set guifont=monaco:h14
set incsearch
set hlsearch
" set folding
set foldmethod=manual   
set foldnestmax=10
set nofoldenable
set foldlevel=2

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/                                                  
"lets
let g:indent_guides_enable_on_vim_startup = 1
let g:notes_directories = ['/Users/Tuv/.vim/bundle/vim-notes/misc/notes/user', 
                           \'~/Documents/master_thesis/dear_diary/'] 
""""""""""""""""
"Fucking with linenumbers"
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
" highlight SignColumn guibg=red
" sign define name text=>>
" sign define information text=!> linehl=Warning texthl=Error icon=/path/to/information.xpm

 " ____            _            
" |  _ \ _   _  __| | ___   ___ 
" | |_) | | | |/ _` |/ _ \ / __|
" |  __/| |_| | (_| | (_) | (__ 
" |_|    \__, |\__,_|\___/ \___|
 "       |___/                  
" function! Pydoc()
"     let save_isk = &iskeyword
  
"     try
"         set iskeyword+=.
"         let words = split(expand("<cword>"), '\.')
"         let w = words[0]
"         let t=[] | silent execute '%s/import \(\w\+\) as '
"                 \.w.'\zs/\=add(t,submatch(1))[1:0]/&n'
"         let words[0] = t[0]
"         execute ':new |'.
"                     \':setlocal buftype=nofile |'.
"                     \':setlocal bufhidden=hide |'.
"                     \ ':setlocal noswapfile |'.
"                     \"r!pydoc " . join(words, '.')
"         let &iskeyword = save_isk

"     catch 'E486'
"         execute ':new |'.
"                     \':setlocal buftype=nofile |'.
"                     \':setlocal bufhidden=hide |'.
"                     \ ':setlocal noswapfile |'.
"                     \"r!pydoc " . expand("<cword>")
"     endtry
    
"     set iskeyword-=.
" endfunction





command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction

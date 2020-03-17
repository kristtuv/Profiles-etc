
""""""""""""""""""""""Vundle"""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
" Keep Plugin commands between vundle#begin/end.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vundlevim/vundle.vim' "Vundle
Plugin 'SirVer/ultisnips' "Make snippets
Plugin 'vim-latex/vim-latex' "Latex
Plugin 'scrooloose/nerdtree' "Nerdtree ctrl-o
Plugin 'scrooloose/syntastic' "Syntax check
Plugin 'yggdroot/indentline' "Indentlines small
Plugin 'tpope/vim-commentary' "Comment stuff gccc
Plugin 'tpope/vim-surround' "Surround things yssb
Plugin 'tpope/vim-repeat' "Repat plugin commands. Note: can be expanded
Plugin 'godlygeek/tabular' "Align chracters ex: :Tab /=
Plugin 'itchyny/lightline.vim' "Add lightline
Plugin 'wellle/tmux-complete.vim' "Autocomplete words shown in tmux window
Plugin 'ctrlpvim/ctrlp.vim' "Fuzzyfinder
Plugin 'machakann/vim-swap' "Swap arguments
Plugin 'flazz/vim-colorschemes' "All colorschemes (pretty much)
Plugin 'Valloric/YouCompleteMe' "Completion
" Plugin 'kana/vim-textobj-user' "Creating selection patterns
" Plugin 'kana/vim-textobj-entire' "Creating selection patterns
" Plugin 'kana/vim-textobj-indent' "Creating selection patterns
" Plugin 'kana/vim-textobj-syntax' "Creating selection patterns
" Plugin 'kana/vim-textobj-line' "Creating selection patterns
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'honza/vim-snippets'
" Plugin 'hdima/python-syntax'
" Plugin 'ZoomWin'
" Plugin 'conornewton/vim-latex-preview'
" Plugin 'majutsushi/tagbar'
" Plugin 'klen/python-mode'
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""All Modes Mapping"""""""""""""""""""""
noremap <C-o> :NERDTreeToggle<CR>

"""""""""""""""""""Insert mode mappings""""""""""""""""""
inoremap <C-l> <Right> 
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-f> <C-r>"

""""""""""""""""Normal Mode Mappings"""""""""""""""""""""
nnoremap Y y$

""""""""""""""""""""Leader Mappings"""""""""""""""""""""
nnoremap <leader>vrc :vsplit $MYVIMRC<cr>
nnoremap <leader>svrc :source $MYVIMRC<cr>
nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leader>D "_d$
nnoremap <leader>n :lnext<cr>
nnoremap <leader>p :lprevious<cr>


""""""""""""""""""""""Colorscheme"""""""""""""""""""""""
""Gruvbox
" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_imporoved_strings = 1

""Afterglow
colorscheme afterglow

" let g:python_highlight_space_errors = 0
" let g:python_highlight_builtin_objs = 0
" let g:python_highlight_all = 1
syntax on

""""""""""""""""""""""""Sets"""""""""""""""""""""""""""""
set mouse=a "Allow clicking with mouse
set background=dark "Sets default background, might change with colorscheme
set t_Co=256 "Enable 256 colors
set cindent autoindent "Autoindent for newline
set tabstop=4 "Maximum tab size
set shiftwidth=4 "Size of indent in spaces
set expandtab "Insert spaces when tab is used
set wildmode=longest,list,full "Tabcompletion command line
set wildmenu "Tabcompletion command line
set path+=** "When using :find, also search subdirs
set laststatus=2 "Always show status line
set noshowmode "Dont show insert text. Removed because of lightline
set incsearch "Partial search
set hlsearch "Highlight all matches

" set folding
set foldmethod=manual   
set foldnestmax=10
set nofoldenable
set foldlevel=2

""""""""""""""Syntactic"""""""""""""""""""""""""""""""""
" let g:syntastic_aggregate_errors = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


""""""""""""""""""""Snippets"""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

""""""""""""""""""""Latex"""""""""""""""""""""""""""""""
let g:tex_flavor='latex'
let g:Tex_AdvancedMath = 1

""""""""""""""""Mark 80 character limit""""""""""""""""""
highlight OverLength ctermbg=white ctermfg=black guibg=#592929
match OverLength /\%81v/                                                  

"""""""""""""""""""""""Linenumbers"""""""""""""""""""""""
" set number "Show numbers
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


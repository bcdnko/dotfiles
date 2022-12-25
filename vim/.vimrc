" Turn off vi compatibility
set nocompatible

if exists('cfg_all')
    let cfg_ext=1
    let cfg_dev=1
    let cfg_web=1
    let cfg_web_syn=1
    let cfg_python=1
endif

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'godlygeek/csapprox'

if exists('cfg_ext')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'scrooloose/nerdtree'
    Plug 'editorconfig/editorconfig-vim'

    Plug 'easymotion/vim-easymotion'
    Plug 'mileszs/ack.vim'

    "Plug 'altercation/vim-colors-solarized'
    "Plug 'tpope/vim-surround.git'
    "Plug 'machakann/vim-sandwich'
    "Plug 'nathanaelkane/vim-indent-guides'
    "Plug 'sjl/gundo.vim'
    "Plug 'chrisbra/nrrwrgn'
endif

if exists('cfg_dev')
    Plug 'tpope/vim-fugitive'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'airblade/vim-gitgutter'

    "Plug 'kien/ctrlp.vim'
    "Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
    "Plug 'scrooloose/nerdcommenter'
    "Plug 'majutsushi/tagbar'
endif

if exists('cfg_web')
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "Plug 'Shougo/vimproc.vim'
    "Plug 'othree/html5.vim'
    "Plug 'mattn/emmet-vim'
    "Plug 'herringtondarkholme/yats.vim'

    let g:coc_global_extensions = [
        \ 'coc-tsserver',
        \ 'coc-json',
        \ 'coc-css',
        \ 'coc-html'
        \ ]

    if exists('cfg_python')
        Plug 'vim-scripts/indentpython.vim'
        Plug 'view/vim-flake8'
        let python_highlight_all=1
    endif
endif

call plug#end()

""""""""""""""""""""
" SYSTEM
" Leader
let mapleader = " "

" Encoding
set encoding=utf-8

" Security
set modelines=0

" Spellcheck
set spell spelllang=en_us
set spelloptions+=camel

" Remember buffers
"exec 'set viminfo=%,' . &viminfo

" Any buffer could be hidden (even not saved one)
set hidden

" FILES AND DIRECTORIES
" Keep swap and backup files in tmp directory
set directory^=$HOME/.vim/tmp
set backupdir^=$HOME/.vim/tmp

" Remember history for more lines
set history=500
set undolevels=2000
set noundofile

" APPEARANCE 
set background=dark
colorscheme skythunder
autocmd vimenter * ++nested colorscheme skythunder
syntax on 
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
set t_Co=256 
let macvim_skip_colorscheme=1

set laststatus=2
set wrap linebreak
if exists('cfg_dev')
    set nowrap
endif

set cursorline
set colorcolumn=90

set number
set relativenumber

set visualbell
set ttyfast
set backspace=indent,eol,start
set scrolloff=1
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set showcmd

set guioptions-=r "remove right-hand scroll bar
set guioptions-=R "remove right-hand scroll bar
set guioptions-=l "remove left-hand scroll bar
set guioptions-=L "remove left-hand scroll bar
set guioptions-=b "remove bottom scroll bar
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions+=c "use console dialogs


" INPUT
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window.
    "set lines=999 columns=999
endif
nnoremap <leader><esc> :nohl<cr><esc>

set mousehide
set mousemodel=popup


" MENU
set path+=** "search files in all subfolders
set wildmenu
set wildmode=list:longest,full


" NAVIGATION
" move to the next line with h and l
" set whichwrap+=,h,l


" FORMATTING
set autoindent
set smartindent
set tabstop=4 shiftwidth=4 expandtab softtabstop=4


" KEYS
" Files
nnoremap <C-s> :wa<cr>

" Navigation
" nnoremap j gj
" nnoremap k gk
" nnoremap <tab> % - removed because of <c-i>
" vnoremap <tab> % - removed because of <c-i>

" Tabs
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <leader>tt :exe "tabn ".g:lasttab<cr>
"gt
"gT
nnoremap <leader>ta :tabnew<cr>
nnoremap <leader>tq :tabclose<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tl :tabs<cr>
nnoremap <leader>tc :tabe %<cr>
"nnoremap <leader>tgd <leader>gd :tabe %<cr><leader>:exe "tabn ".g:lasttab<cr><c-o>:exe "tabn ".g:lasttab<cr>
nnoremap <leader>ts :tab split<cr>

nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-9> 9gt
nnoremap <M-0> 0gt

" Buffers
nnoremap <leader>bb :bnext<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bc :enew<cr>
nnoremap <leader>bq :bp<bar>sp<bar>bn<bar>bd<cr>
nnoremap <leader>bd :bp<bar>sp<bar>bn<bar>bd<cr>
nnoremap <leader>bl :ls<cr>
nnoremap <leader>bo :%bd\|e#<cr>

" Search
"nnoremap <leader>f :find 
nnoremap <leader>s :wa<cr>
nnoremap <leader>gr :grep -RF '<c-r>"' ./src/

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Registers
nnoremap <leader>ri :let @"=@+<cr>
nnoremap <leader>re :let @+=@"<cr>
nnoremap <leader>fy :let @" = expand("%")<cr>

nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>p "+p
nnoremap <leader>P "+P

vnoremap <leader>y "+y
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Windows
set splitbelow
set splitright
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>_ <C-w>s<C-w>J<C-w>15_
noremap <leader><tab> <C-^>
noremap <leader>w <C-w>

" Command line
cnoremap <c-p> <up>
cnoremap <c-n> <down>

" Completion
set omnifunc=syntaxcomplete#Complete
set completeopt=menuone
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<cr>"

" Search
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
set matchtime=1
"nnoremap / /\v
"vnoremap / /\v
" Clear a search by typing ,<space>
"nnoremap <leader><space> :noh<cr>


" FILES
nnoremap <leader>fed :e ~/dotfiles/vim/.vimrc<cr>


" UTILITIES
nnoremap <leader>gc gg/constructor<cr>zz 
nnoremap <leader>json :%!jq<cr>

" :Sw sudo write
command Sw w !sudo tee % > /dev/null

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" prettify URL query string
map <leader>url :%s/&/\r&/g<cr>

""""""""""""""""""""
" auto highlight word under the cursor
let g:currentWordAutoHilight = 0

function CurrentWordAutoHighlight()
    if g:currentWordAutoHilight
        silent! exe printf("match Search /\\<%s\\>/", expand('<cword>'))
    endif
endfunction

autocmd CursorMoved * call CurrentWordAutoHighlight()

command CurrentWordAutoHighlightToggle let g:currentWordAutoHilight = 1 - g:currentWordAutoHilight

""""""""""""""""""""
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

""""""""""""""""""""


" CUSTOM CONFIGURATIONS
if exists('cfg_dev')
    " Automatically update files
    set autoread
    "set autowriteall

    " Open current file in WebStorm
    nnoremap <C-M-e> :execute ":!/opt/webstorm/bin/webstorm.sh --line " . line('.') . " % " . " &"<cr>

    set nofoldenable

    " Save everything on focus lost TODO add to session
    "au FocusLost * silent! wa

    " Auto cd to current file's directory
    "autocmd BufEnter * lcd %:p:h
    "set autochdir

    " ctags on save
    "nnoremap <C-s> :wa<cr>:!ctags -R .<cr><cr>

    " Reformat pasted
    "nnoremap p p=`]
    "nnoremap P P=`]

    " Utilities
    " nnoremap <leader>nxtr yi'<cr>:!node ~/dev/translation.js <C-r>"<cr>
endif

if exists('cfg_web')
    " Ignore js dirs
    set wildignore+=*/node_modules/**
    set wildignore+=coverage
    set wildignore+=coverage_js
    set wildignore+=dist

    " Workaround for weback watch issue
    set backupcopy=yes 

    "autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
    "autocmd BufNewFile,BufRead *.js setlocal filetype=typescript
    "autocmd BufNewFile,BufRead *.jsx setlocal filetype=typescriptreact
    "autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescriptreact
    "autocmd FileType javascript,typescript,json setlocal foldmethod=marker foldmarker={,} foldlevel=0

    " let g:tsuquyomi_single_quote_import=1
    " let g:tsuquyomi_disable_quickfix = 1
    " nnoremap <leader>im :TsuImport<cr>

    " let g:typescript_indent_disable = 1
    " let g:syntastic_typescript_checkers = ['tslint', 'tsc']
    " let g:syntastic_aggregate_errors = 1

    let g:tagbar_type_typescript = {
        \ 'ctagstype': 'typescript',
        \ 'kinds': [
            \ 'c:classes',
            \ 'n:modules',
            \ 'f:functions',
            \ 'v:variables',
            \ 'v:varlambdas',
            \ 'm:members',
            \ 'i:interfaces',
            \ 'e:enums',
        \ ]
    \ }

    nmap gd <Plug>(coc-definition)
    nmap gD <Plug>(coc-type-definition)
    nnoremap <leader>gd <Plug>(coc-definition)
    nnoremap <leader>gD <Plug>(coc-type-definition)
    nnoremap <leader>mgr <Plug>(coc-references)
    nnoremap <leader>ma <Plug>(coc-codeaction) " import under cursor
    nmap <leader>mrr <Plug>(coc-rename)
    nnoremap <leader>mh :call CocAction('doHover')<CR>
    nmap <leader>ep <Plug>(coc-diagnostic-prev)
    nmap <leader>en <Plug>(coc-diagnostic-next)
endif


" PLUGINS
""""""""""""""""""""
" netrw
let g:netrw_banner = 0

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

""""""""""""""""""""
" NERDTree
if exists('cfg_dev')
    au VimEnter *  NERDTree
endif

let g:NERDTreeWinSize=60
let g:NERDTreeShowHidden=1
let g:NERDTreeMapJumpNextSibling = '<Nop>'
let g:NERDTreeMapJumpPrevSibling = '<Nop>'

nmap <leader>ft :NERDTreeToggle<cr>
nmap <leader>pt :NERDTreeFind<cr>

""""""""""""""""""""
" the_silver_searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor\ --hidden

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0

    let g:ackprg = 'ag --nogroup --nocolor --column'
endif

""""""""""""""""""""
" GitGutter
let g:gitgutter_diff_base = 'HEAD'

""""""""""""""""""""
" Fugitive
map <leader>gst :Gst<cr><c-w>J

""""""""""""""""""""
" Show syntax region name
nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

""""""""""""""""""""
" YouCompleteMe
"let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]
"nnoremap gd :YcmCompleter GoToDefinition<CR>
"nnoremap gD :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>z :YcmCompleter GoToReferences<cr> " requires jsconfig file
"nnoremap <leader>ac1 :let g:ycm_auto_trigger=1<CR>
"nnoremap <leader>ac0 :let g:ycm_auto_trigger=0<CR>

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:ycm_autoclose_preview_window_after_completion=1

""""""""""""""""""""
" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-l>"

""""""""""""""""""""
" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_loc_list_height=3

""""""""""""""""""""
" CtrlP
"let g:ctrlp_show_hidden = 1

""""""""""""""""""""
" Fuzzy Finder
nmap <C-p> :Files<cr>

""""""""""""""""""""
" Ctags
" https://github.com/romainl/ctags-patterns-for-javascript
let g:tagbar_type_javascript = {
    \ 'ctagstype': 'javascript',
    \ 'kinds': [
        \ 'A:Arrays',
        \ 'C:Classes',
        \ 'E:Exports',
        \ 'F:Functions',
        \ 'G:Generators',
        \ 'I:Imports',
        \ 'M:Methods',
        \ 'P:Properties',
        \ 'O:Objects',
        \ 'S:StyledComponents',
        \ 'T:Tags',
        \ 'V:Variables',
    \ ]
\ }

""""""""""""""""""""
" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

""""""""""""""""""""
" Gundo
if has('python3')
    let g:gundo_prefer_python3 = 1
endif


""""""""""""""""""""
" File Types
""""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au FileType typescript,typescriptreact,javascript,html,css
    \ setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2

nnoremap <Space> <Nop>
let mapleader = "\<Space>"

call plug#begin('~/.nvim/plugged')

"
" tpope essentials
"
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-rhubarb'

"
" completions & snippets
"
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

"
" web stuff
"
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'janko-m/vim-test'

"
" text objects & movements
"
Plug 'vim-scripts/textobj-user'
Plug 'vim-scripts/textobj-entire'
Plug 'vim-scripts/textobj-line'
Plug 'kana/vim-textobj-syntax'
Plug 'thinca/vim-textobj-comment'
Plug 'bkad/CamelCaseMotion'
Plug 'mbriggs/mark.vim'
Plug 'justinmk/vim-sneak'
Plug 'wellle/targets.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'

"
" idris
"
Plug 'idris-hackers/idris-vim'

"
" haskell
"
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
"Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
"Plug 'ujihisa/neco-ghc', { 'for': 'haskell' }
"Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }
Plug 'ujihisa/unite-haskellimport', { 'for': 'haskell' }
Plug 'eagletmt/unite-haddock', { 'for': 'haskell' }
Plug 'parsonsmatt/intero-neovim', { 'for': 'haskell' }
Plug 'neomake/neomake', { 'for': ['haskell', 'scala'] }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

"
" git / scm
"
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'

"
" themes & looks
"
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'iCyMind/NeoSolarized'

"
" terminal / integration
"
Plug 'Shougo/vimproc'
Plug 'Shougo/vimshell.vim'
Plug 'gilligan/vim-tmux-navigator'
Plug 'kassio/neoterm'

"
" navigation / buffers
"
Plug 'Valloric/ListToggle'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'Majutsushi/tagbar'
Plug 'wellle/visual-split.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kmnk/vim-unite-giti'
"
" misc
"
Plug 'vim-scripts/UnconditionalPaste'
Plug 'airblade/vim-rooter'
Plug 'itchyny/calendar.vim'
Plug 'LnL7/vim-nix'
Plug 'w0rp/ale'
Plug 'dyng/ctrlsf.vim'
Plug 'krisajenkins/vim-projectlocal'
Plug 'tyru/open-browser.vim'
Plug 'fszymanski/deoplete-emoji'
"Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

call plug#end()

"
" global settings
"
syntax on            " enable syntax highlightning
set nocp             " no compatible mode
set ambiwidth=single " display icons correctly
set gdefault         " always enable greedy mode
set ignorecase       " ignore case in searches
set smartcase        " smarter ignorecase
set ruler            " show ruler
set cursorline       " higlight cursor line
set tags=tags;/,codex.tags;/ " look for tags in current dir and up and
set nu               " show line numbers
set cmdheight=1      " cmd line is 1 lines high
set wmh=0            " minimal window height is 0
set expandtab        " expand tab with spaces
set tabstop=4        " tab = 4 spaces
set shiftwidth=4     " shift by 4 spaces
set softtabstop=4    " tab equals 4 spaces
set laststatus=2     " always show status
set background=light " light background color
set incsearch        " search incrementally
set nohlsearch       " no search higlight
set grepprg=grep\ -nH\ $* " print filename for match
set backspace=indent,eol,start " make backspace behave
set showmatch        " quickly jump to matching bracket
set cindent          " enable automatic C indenting
set autoindent       " copy indentation to next line
set viminfo=%,!,'50,\"100,:100,n~/.viminfo
set noerrorbells     " don't annoy me
set t_vb=            " really, don't do it
set guioptions-=r    " disable gui stuff
set guioptions-=T    " disable gui stuff
set guioptions-=m    " disable gui stuff
set guioptions-=l    " disable gui stuff
set guioptions-=L    " disable gui stuff
set guicursor=
set nobackup         " no useless backup files
set noswapfile       " no useless swap files
set wildignore+=*.so,*.swp,*.zip " ignore patterns for completion
set nohidden
let g:rct_completion_use_fri = 1
set clipboard=unnamedplus " clipboard = unnamed reg for easy interaction
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
let &shellpipe='&>'
set synmaxcol=800      " do not highlight huge files
set mouse=
augroup cline          " show cursorline only in active view/normal mode
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END
set completeopt=menuone
set noshowmode
filetype plugin indent on
set timeoutlen=1000 ttimeoutlen=0
syntax on
set t_Co=256
set t_ut=
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:neosolarized_contrast = "high"
let g:neosolarized_visibility = "high"
colo NeoSolarized

"
" deoplete tern settings
"
let g:deoplete#sources#ternjs#types = 1


" airline settings
"
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline#extensions#ale#enabled = 1

"
" auto commands
"

" Show trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
" Resize splits when window is resized
au VimResized * exe "normal! \<c-w>="
" Go to last editing position
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif

function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction
nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>


"
" fugitive plugin
"
let g:github_enterprise_urls = ['https://github.hc.ag']
autocmd QuickFixCmdPost *grep* cwindow

"
" haskell-vim settings
"

set tags=tags;/,codex.tags;/

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_case_alternative = 1

call unite#custom_default_action('haddock', 'browse_remote')

"
" configuration for necoghc
"
let g:necoghc_enable_detailed_browse = 1
let g:necoghc_debug = 1
let g:necoghc_use_stack = 0
"
" configuration for ghcimportedfrom-vim
"
let g:ghcimportedfrom_browser = '/usr/bin/chromium-browser'


" fix highlightning of functions
set iskeyword+='

function! GhciReload()
    call VimuxSendText(":r")
    call VimuxSendKeys("Enter")
endfunction

nnoremap <leader>h= :execute "Tabularize haskell_bindings"<CR>
nnoremap <leader>ht :execute "GhcModType!"<CR>
nnoremap <leader>hT :execute "GhcModTypeInsert!"<CR>
nnoremap <leader>hc :execute "GhcModTypeClear"<CR>
nnoremap <leader>hi :execute "GhcModInfoPreview!"<CR>
nnoremap <leader>hh :execute "GhcImportedFromOpenHaddock"<CR>
nnoremap <leader>hg :execute "GhcModSigCodegen"<CR>
nnoremap <leader>hI :execute "Unite -start-insert haskellimport"<CR>
nnoremap <leader>hr :call GhciReload()<CR>
nnoremap <leader>hs :execute "Unite hoogle"<CR>
nnoremap <leader>hb k0yiWjpA
nnoremap <leader>tn :execute "Tnew"<CR>
nnoremap <leader>tt :execute "Ttoggle"<CR>
nnoremap <leader>tc :execute "Tclose"<CR>


function! s:tags_sink(line)
  let parts = split(a:line, '\t\zs')
  let excmd = matchstr(parts[2:], '^.*\ze;"\t')
  execute 'silent e' parts[1][:-2]
  let [magic, &magic] = [&magic, 0]
  execute excmd
  let &magic = magic
endfunction

function! s:tags()
  if empty(tagfiles())
    echohl WarningMsg
    echom 'Preparing tags'
    echohl None
    call system('ctags -R')
  endif

  call fzf#run({
  \ 'source':  'cat '.join(map(tagfiles(), 'fnamemodify(v:val, ":S")')).
  \            '| grep -v -a ^!',
  \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
  \ 'down':    '40%',
  \ 'sink':    function('s:tags_sink')})
endfunction

command! Tags call s:tags()

let g:intero_start_immediately = 0
let g:intero_backend = {
        \ 'command': 'cabal new-repl',
        \ 'cwd': expand('%:p:h'),
        \}

" general mappings {{{

" go to start/end of line
imap <C-E> <C-O>$
imap <C-A> <C-O>^


" paste clipboard contents
map ,p "+p
nmap  ,q  :bd<CR>

" list lines containing word under cursor
map ,l [I:let nr = input("select: ")<Bar>exe "normal " . nr ."[\t"<CR>
" list occurences count of word under cursor
map ,L :execute ":%s@\\<" . expand("<cword>") . "\\>\@&@gn"<CR>


" use arrow keys for window manipulation
nnoremap <silent> <Up> <C-w>+<C-w>+
nnoremap <silent> <Down> <C-w>-<C-w>-
nnoremap <silent> <Left> <C-w><<C-w><
nnoremap <silent> <Right> <C-w>><C-w>>

" close quickfix/location list
nnoremap <silent> <C-W>z :wincmd z<Bar>cclose<Bar>lclose<Bar>HoogleClose<CR>
" toggle tabs
nnoremap <C-w><space> gt

" copy selected text to command line
vnoremap ; y:<C-r>"<C-b>

"
" home row leader key mappings
"
nnoremap <leader><CR> :NERDTreeToggle<CR>
" nnoremap <leader>s <Plug>SlimeParagraphSend()
" nnoremap <leader>d YCM           <-- get rid of this
"nnoremap <leader>f :Unite -start-insert file_rec/async<CR>
" nnoremap <leader>g Signify       <-- get rid of this
" nnoremap <leader>hlt HiLinkTrace <-- get rid of this
" nnoremap <leader>j               <-- SPACE FOR RENT
" nnoremap <leader>k               <-- SPACE FOR RENT
" nnoremap <leader>l  ListToggle
" nnoremap <leader>;               <-- SPACE FOR RENT
" nnoremap <leader>'               <-- SPACE FOR RENT

"
" non-home row leader mappings
"
nnoremap <leader>o :Unite -start-insert outline<CR>

" visual select last paste (textobj-lastpate)
nnoremap <leader>p vip

nnoremap <C-p> :FZF<cr>
nnoremap <C-g> :GFiles<cr>
" general mappings }}}


"
" seek plugin
"
let g:seek_enable_jumps = 1


let g:signify_disable_by_default = 0
let g:signify_vcs_list = ['git']
nmap ]h <plug>(signify-next-hunk)
nmap [h <plug>(signify-prev-hunk)


"
" sneak settings
"
let g:sneak#streak = 1


"
" tabular plugin {{{
"
vmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t: :Tabularize /:<CR>
vmap <Leader>t> :Tabularize /-><CR>

let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-K>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:dash_map = {
    \ 'javascript': [ 'javascript', 'nodejs', 'ramda' ]
    \}

"
" vim test settings
"
nnoremap <leader>mr :TestFile<CR>
nnoremap <leader>mi :TestNearest<CR>
nnoremap <leader>ml :TestLast<CR>
nnoremap <leader>mc :Tclose<CR>
"let test#strategy = 'neoterm'
let test#strategy = 'neovim'

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        exec t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-w>z :ZoomToggle<CR>



" Window split settings
highlight TermCursor ctermfg=red guifg=red
set splitbelow
set splitright

" Terminal settings
if has('nvim')
    tnoremap <F2> <C-\><C-n>
    tnoremap <C-h> <C-\><C-n><C-w>h
    tnoremap <C-j> <C-\><C-n><C-w>j
    tnoremap <C-k> <C-\><C-n><C-w>k
    tnoremap <C-l> <C-\><C-n><C-w>l
    "tnoremap ,<ESC> <C-\><C-n>
endif

"
" ale linters
"
"let g:ale_linters = {'haskell': ['hlint', 'intero', 'ghc']}
let g:ale_linters = {'haskell': ['hlint', 'ghc']}
let g:ale_haskell_ghc_options = '-fno-code -v0 -isrc'

let g:LanguageClient_rootMarkers = ['*.cabal']
"let g:LanguageClient_serverCommands = {
    "\ 'haskell': ['hie-8.2', '--lsp'],
    "\ }

" ctrlsf settings
nmap     <leader>f <Plug>CtrlSFPrompt

" Sideways mapping
nnoremap <leader>[ :SidewaysLeft<CR>
nnoremap <leader>] :SidewaysRight<CR>

" vim-operator-flashy
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" use fzf
set rtp+=~/.fzf

" deoplete
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources = {}
let g:deoplete#sources.markdown = ['emoji', 'buffer', 'look']
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.scala = ['[^. *\t0-9]\.\w*',': [A-Z]\w', '[\[\t\( ][A-Za-z]\w*']

let g:javascript_conceal_function       = "λ"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_arrow_function = "⇒"

" neoterm
let g:neoterm_size = 10

" tab navigation
"
nnoremap <C-f>1 1gt
nnoremap <C-f>2 2gt
nnoremap <C-f>3 3gt
nnoremap <C-f>4 4gt
nnoremap <C-f>5 5gt
nnoremap <C-f>c :tabnew<CR>
nnoremap <C-f>q :tabclose<CR>

" openbrowser settings
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)


" tmux color hacking stuff
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

"
" haskell / ghcid mappings & config
"

"augroup interoMaps
  "au!
  "au FileType haskell nnoremap <silent> <leader>ht :InteroGenericType<CR>
  "au FileType haskell nnoremap <silent> <leader>hi :InteroInfo<CR>
  "au FileType haskell nnoremap <silent> <leader>ho :InteroOpen<CR>
  "au FileType haskell nnoremap <silent> <leader>hl :InteroLoadCurrentFile<CR>
  "au FileType haskell nnoremap <silent> <leader>hm :InteroLoadCurrentModule<CR>
"augroup END

" GHCi starts automatically. Set this if you'd like to prevent that.
let g:ghci_start_immediately = 1

" Customize how to run GHCi
let g:ghci_command = 'cabal new-repl'
let g:ghci_command_line_options = '-fobject-code'

"
" Nix LSP
"
"let g:LanguageClient_serverCommands = {
      "\ 'nix': ['nix-lsp'],
      "\ }
"let g:LanguageClient_loadSettings = 1
"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"nnoremap <silent> nh :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> nd :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> nr :call LanguageClient_textDocument_references()<CR>
"nnoremap <silent> ns :call LanguageClient_textDocument_documentSymbol()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
"nnoremap <silent> nf :call LanguageClient_textDocument_formatting()<CR>

"
" vim lightline
"
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }


"Scala Linting with neomake
let g:neomake_sbt_maker = {
      \ 'exe': 'sbt',
      \ 'args': ['-Dsbt.log.noformat=true', 'compile'],
      \ 'append_file': 0,
      \ 'auto_enabled': 1,
      \ 'output_stream': 'stdout',
      \ 'errorformat':
          \ '%E[%trror]\ %f:%l:\ %m,' .
            \ '%-Z[error]\ %p^,' .
            \ '%-C%.%#,' .
            \ '%-G%.%#'
     \ }
let g:neomake_enabled_makers = ['sbt']
let g:neomake_verbose=3

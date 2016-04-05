" Jacob Smith's .vimrc
set nocompatible      " this must be as early as possible

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Core Settings {{{
" Also note that vim-sensible sets up some nice defaults
set modelines=1 " Allow modelines (i.e. executable comments)
set switchbuf+=usetab
set hidden

if !has('nvim')
  set mouse+=a " Enable mouse use in all modes

  if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
  endif
endif

" Search
set hlsearch    " highlight matches
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set infercase   " Use the correct case when autocompleting

set background=dark
let g:pencil_terminal_italics = 1
colorscheme pencil

set number            " Show line numbers
set colorcolumn=81
set showmatch " show matching brackets

" Open new split panes to right and bottom
set splitbelow
set splitright

set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
set foldlevelstart=10   " start with fold level of 10

" replace last 'c' character with $
set cpoptions+=$

set t_ti= t_te= " leave vim session in terminal after quit

" Whitespace
set tabstop=2     " a tab is two spaces
set expandtab     " use spaces, not tabs
set softtabstop=2 " 2 space tab
set shiftwidth=2  " an autoindent (with <<) is two spaces
set shiftround    " round indent to shiftwidth
set list          " show invisible listchars
set nowrap

" Backup and swap files
set backup
set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/swap//      " where to put swap files.

" Files and directories to hide
set wildignore+=*.o,*.out,*.obj,.git/*,*.rbc,*.rbo,*.class,*.gem,.DS_Store

set lazyredraw                  " Don't update while executing macros

set title " change the terminal title
set noerrorbells " don't beep
" }}}

" Tweaks {{{
" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" fix & command to preserve flags
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Expand %% to current directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * wincmd =
" }}}

" Keyboard bindings {{{
let mapleader = "\<Space>"

nnoremap 0 ^

nnoremap <leader>r :nohlsearch<CR>:redraw!<CR>
nnoremap <leader><leader> <c-^>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

vnoremap <Leader>y "*y
vnoremap <Leader>d "*d
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P
vnoremap <Leader>p "*p
vnoremap <Leader>P "*P

nnoremap <leader>gg :GitGutterLineHighlightsToggle<cr>

nnoremap <leader>e :VimFilerExplorer<cr>
nnoremap <leader>f :VimFiler<cr>

nnoremap <leader>w :Goyo<CR>
nnoremap <silent> <leader>gq :g/^/norm gqq<CR> " format all paragraphs
nnoremap <silent> <leader>gj :%norm vipJ<CR> " unformat all paragraphs

nnoremap <silent> <leader>m :!open -a Marked\ 2.app "%"<cr> " preview Markdown

nnoremap <silent> <leader>[ :tabprevious<CR>
nnoremap <silent> <leader>] :tabnext<CR>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" grep / silver searcher
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>:redraw!<CR>
nnoremap \ :Ag<SPACE>
" }}}

" Custom commands {{{
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" }}}

" Plugin settings {{{
let g:vim_json_syntax_conceal = 0

" Make VimFiler work more better
nnoremap <silent> - :VimFilerBufferDir<cr>

let g:vimfiler_as_default_explorer = 1
let g:vimfiler_no_default_key_mappings = 1
call vimfiler#custom#profile('default', 'context', {
\   'safe' : 0,
\   'simple' : 1,
\ })
autocmd FileType vimfiler call SetupVimfiler()
function! SetupVimfiler()
  " Keep space leader, use tab for marking
  vmap <buffer> <Tab> <Plug>(vimfiler_toggle_mark_selected_lines)
  nmap <buffer> <Tab> <Plug>(vimfiler_toggle_mark_current_line)

  " Keep <C-l> for nav, use <leader>r to redraw
  nmap <buffer> <leader>r :nohlsearch<CR><Plug>(vimfiler_redraw_screen)

  " Use netrw/vinegar bindings
  nmap <buffer> <F1> <Plug>(vimfiler_help)
  nmap <buffer> ! <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_execute_shell_command)
  nmap <buffer> R <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_rename_file)
  nmap <buffer> D <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_delete_file)
  nmap <buffer> <del> <Plug>(vimfiler_mark_current_line)<Plug>(vimfiler_delete_file)
  nmap <buffer> d <Plug>(vimfiler_make_directory)
  nmap <buffer> % <Plug>(vimfiler_new_file)
  nmap <buffer> - <Plug>(vimfiler_switch_to_parent_directory)
  nmap <buffer> cl <Plug>(vimfiler_cd_vim_current_dir)
  nmap <buffer> <cr> <Plug>(vimfiler_cd_or_edit)
  nmap <buffer> o <Plug>(vimfiler_expand_or_edit)
  nmap <buffer> gh <Plug>(vimfiler_toggle_visible_dot_files)
  nmap <buffer> x <Plug>(vimfiler_execute_system_associated)
  nmap <buffer> . <Plug>(vimfiler_toggle_visible_dot_files)
  nmap <buffer> v <Plug>(vimfiler_split_edit_file)<C-W>=<CR>
endfunction

" Airline
let g:airline_theme = 'pencil'
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:airline_section_y = ""       " remove fileencoding[fileformat]

" Goyo
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set virtualedit=
  noremap  <buffer> <silent> k gk
  noremap  <buffer> <silent> j gj
  noremap  <buffer> <silent> <Home> g<Home>
  noremap  <buffer> <silent> <End>  g<End>
  inoremap <buffer> <silent> <Up>   <C-o>gk
  inoremap <buffer> <silent> <Down> <C-o>gj
  inoremap <buffer> <silent> <Home> <C-o>g<Home>
  inoremap <buffer> <silent> <End>  <C-o>g<End>
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set virtualedit=all
  silent! nunmap <buffer> k
  silent! nunmap <buffer> j
  silent! nunmap <buffer> <Home>
  silent! nunmap <buffer> <End>
  silent! iunmap <buffer> <Up>
  silent! iunmap <buffer> <Down>
  silent! iunmap <buffer> <Home>
  silent! iunmap <buffer> <End>
endfunction

autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd  User GoyoEnter nested call <SID>goyo_enter()
autocmd  User GoyoLeave nested call <SID>goyo_leave()

" markdown folding
let g:markdown_fold_style = 'nested'

" Syntastic
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_json_checkers = ['jsonlint']

" The Silver Searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
endif

" CtrlP
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ignore non project files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.template|node_modules|development|release)$',
  \ }

let g:mustache_abbreviations = 1

" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1

" JSX
" Allow in .js files
let g:jsx_ext_required = 0
" }}}

" Auto Commands {{{
augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Markdown
  au BufRead,BufNewFile *.md set filetype=markdown
  autocmd FileType markdown setlocal textwidth=80
  autocmd FileType markdown setlocal wrap
  autocmd FileType markdown setlocal linebreak
  autocmd FileType markdown setlocal nolist
  autocmd FileType markdown setlocal colorcolumn=0
  autocmd FileType markdown setlocal spell

  au BufRead,BufNewFile *.scss set filetype=scss
augroup END
" }}}

" GUI {{{
" Needs to be last to override CLI settings
if has("gui_running")
  set guifont=Hack:h16
  set background=light
  set guioptions-=r " hide righthand scroll bar

  if has("gui_macvim")
    macmenu Tools.Make key=<nop>
  endif
endif
" }}}

" Mac {{{
if has("unix")
  let s:uname = substitute(system("uname -s"), '\n', '', '')
  if s:uname == "Darwin"
    let g:netrw_browsex_viewer= "open"
  endif
endif
" }}}
" vim: foldmethod=marker:foldlevel=0

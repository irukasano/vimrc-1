"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/sources_forked/{}')
call pathogen#infect(s:vim_runtime.'/sources_non_forked/{}')
call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-p>'
map <leader>cp :CtrlP<cr>
map <leader>cb :CtrlPBuffer<cr>
map <leader>cr :CtrlPMRU<cr>
"map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
map <leader>snip :SnipMateOpenSnippetFiles<cr>
"let g:snipMate = {
"    \ 'description_in_completion' : 1
"    \ }

"imap <expr> <c-h> pumvisible() ? '<esc>a<Plug>snipMateTrigger' : '<Plug>snipMateTrigger'
"imap <expr> <c-j> pumvisible() ? '<esc>a<Plug>snipMateNextOrTrigger' : '<Plug>snipMateNextOrTrigger'
"smap <c-j> <Plug>snipMateNextOrTrigger
"imap <expr> <c-k> pumvisible() ? '<esc>a<Plug>snipMateBack' : '<Plug>snipMateBack'
"smap <c-k> <Plug>snipMateBack
"imap <expr> <c-l> pumvisible() ? '<esc>a<Plug>snipMateShow' : '<Plug>snipMateShow'

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
" map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
map <leader>nb :Bookmark 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:lightline_unmodifiable_char = "\u26d4"
let s:lightline_modified_char = "\u270f"
let s:lightline_readonly_char = "\ue0a2"
let g:lightline = {
      \ 'colorscheme': 'landscape2',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['readonly', 'modified', 'fugitive', 'gitgutter', 'filename', 'dirname']],
      \   'right': [ ['lineinfo', 'percent'], 
      \              ['fileformat','fileencoding', 'filetype'] ]
      \ },
      \ 'inactive': {
      \   'left': [ ['mode'], ['filename']],
      \   'right': []
      \ },
      \ 'tab': {
      \   'active': ['tabnum', 'filename', 'readonly', 'modified'],
      \   'inactive': ['tabnum', 'filename', 'readonly', 'modified']
      \ },
      \ 'component': {
      \ },
      \ 'component_visible_condition': {
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename',
      \   'dirname': 'LightlineDirname',
      \   'filetype': 'LightlineFiletype',
      \   'fileformat': 'LightlineFileformat',
      \   'fileencoding': 'LightlineFileencoding',
      \   'fugitive': 'LightlineFugitive',
      \   'mode': 'LightlineMode',
      \   'gitgutter': 'LightlineGitGutter'
      \ },
      \ 'component_function_visible_condition': {
      \ },
      \ 'component_expand': {
      \   'lineinfo': 'LightlineLineinfo',
      \   'percent': 'LightlinePercent'
      \ },
      \ 'tab_component_function': {
      \   'filename': 'LightlineTabFilename',
      \   'modified': 'LightlineTabModified',
      \   'readonly': 'LightlineTabReadonly',
      \   'tabnum': 'LightlineTabTabnum'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

"      if you cant use powerline font, use below
"      \ 'separator': { 'left': "", 'right': "" },
"      \ 'subseparator': { 'left': "\u239f", 'right': "\u239f" }
"
"      if you can use powerline font, use below
"      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
"      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }


function! LightlineTabFilename(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let ft = gettabwinvar(a:n, winnr, '&filetype')
  if ft ==# "nerdtree"
    return 'NERD'
  endif
  if ft ==# "help"
    return 'HELP'
  endif
  if ft ==# "taglist"
    return 'TAG'
  endif

  "let _ = pathshorten(expand('#'.buflist[winnr - 1].':f'))
  "let _ = expand('#'.buflist[winnr - 1].':p')
  let _ = expand('#'.buflist[winnr - 1])
  let icon = WebDevIconsGetFileTypeSymbol(_)
  if _ ==# '' 
    return '[No Name]'
  endif
  let h1 = expand('#'.buflist[winnr - 1].':p:h:h:t')
  let h2 = expand('#'.buflist[winnr - 1].':p:h:t')
  let f = expand('#'.buflist[winnr - 1].':t')
  return icon." ".h1."/".h2."/".f
endfunction

function! LightlineTabModified(n) abort
  let winnr = tabpagewinnr(a:n)
  return gettabwinvar(a:n, winnr, '&modified') ? s:lightline_modified_char : 
    \ gettabwinvar(a:n, winnr, '&modifiable') ? '' : s:lightline_unmodifiable_char
endfunction

function! LightlineTabReadonly(n) abort
  let winnr = tabpagewinnr(a:n)
  return gettabwinvar(a:n, winnr, '&readonly') ? s:lightline_readonly_char : ''
endfunction

function! LightlineTabTabnum(n) abort
  return a:n.')'
endfunction

function! LightlineReadonly()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  if &readonly 
    return s:lightline_readonly_char
  endif
  return ''
endfunction

function! LightlineModified()
  if &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  if &modified 
    return s:lightline_modified_char
  endif
  if !&modifiable
    return s:lightline_unmodifiable_char
  endif
  return ''
endfunction

function! LightlineFugitive()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  if "" ==# fugitive#Head()
    return ''
  endif
  let _ = fugitive#head()
  "return strlen(_) ? _ : ''
  return strlen(_) ? '' . _ : ''
endfunction

function! LightlinePercent()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  return '%3p%%'
endfunction

function! LightlineLineinfo()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  return '%4l:%3v'
endfunction

function! LightlineFileencoding()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  return (strlen(&fenc) ? &fenc : &enc)
endfunction

function! LightlineFileformat()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  return &fileformat . ' ' . WebDevIconsGetFileFormatSymbol()
endfunction

function! LightlineFiletype()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist" 
    return ''
  endif
  let icon = WebDevIconsGetFileTypeSymbol()
  return icon . ' ' . &ft
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  if &ft ==# "nerdtree" || &ft ==# "taglist" 
    return ''
  endif
  return (fname !=# '' ? fname : '[No Name]')
endfunction

function! LightlineDirname()
  let fname = expand('%:p:h')
  if &ft ==# "nerdtree" || &ft ==# "taglist" 
    return ''
  endif
  return (fname !=# '' ? fname : '[No Name]')
endfunction

function! LightlineGitGutter()
  if &ft ==# "help" || &ft ==# "nerdtree" || &ft ==# "taglist"
    return ''
  endif
  if ! exists('*GitGutterGetHunkSummary')
        \ || ! get(g:, 'gitgutter_enabled', 0)
        \ || winwidth('.') <= 50
    return ''
  endif
  let symbols = [
        \ g:gitgutter_sign_added . ' ',
        \ g:gitgutter_sign_modified . ' ',
        \ g:gitgutter_sign_removed . ' '
        \ ]
  let hunks = GitGutterGetHunkSummary()
  let ret = []
  for i in [0, 1, 2]
    if hunks[i] > 0
      call add(ret, symbols[i] . hunks[i])
    endif
  endfor
  return join(ret, ' ')
endfunction

function! LightlineMode()
  return  &ft == 'unite' ? 'Unite' :
          \ &ft == 'vimfiler' ? 'VimFiler' :
          \ &ft == 'vimshell' ? 'VimShell' :
          \ &ft == 'nerdtree' ? 'NERD' :
          \ &ft == 'taglist' ? 'TAG' :
          \ lightline#mode()
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Custom CoffeeScript SyntasticCheck
func! SyntasticCheckCoffeescript()
    let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
    execute "tabedit " . l:filename
    execute "SyntasticCheck"
    execute "Errors"
endfunc
nnoremap <silent> <leader>c :call SyntasticCheckCoffeescript()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
let g:gitgutter_async=0
"let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_sign_added = "\u2795" 
let g:gitgutter_sign_modified = "\u270f"
let g:gitgutter_sign_removed = "\u2796" 
let g:gitgutter_sign_removed_first_line = 'DD'
let g:gitgutter_sign_modified_removed = 'MM'
nnoremap <silent> <leader>df :GitGutterToggle<cr>
nnoremap <silent> <leader>dn :GitGutterNextHunk<cr>
nnoremap <silent> <leader>dp :GitGutterPrevHunk<cr>

"highlight clear SignColumn
"highlight GitGutterAdd    guifg=#009900 guibg=#073642 ctermfg=2 ctermbg=0
"highlight GitGutterChange guifg=#bbbb00 guibg=#073642 ctermfg=3 ctermbg=0
"highlight GitGutterDelete guifg=#ff2222 guibg=#073642 ctermfg=1 ctermbg=0

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fugitive.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-ref
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent><C-k> <C-o>:call<Space>ref#K('normal')<CR><ESC>
nmap <silent>K <Plug>(ref-keyword)
let g:ref_no_default_key_mappings = 1
let g:ref_cache_dir               = $HOME.'/.vim_runtime/temp_dirs/vim-ref-cache'
let g:ref_detect_filetype         = {
\    'php': 'phpmanual'
\}
let g:ref_phpmanual_path = $HOME.'/.vim_runtime/data/vim-ref/php-chunked-xhtml'
"let g:ref_phpmanual_cmd = '/usr/bin/lynx -dump -nonumbers %s'
let g:ref_use_cache      = 1
let g:ref_use_vimproc    = 1

let g:ref_source_webdict_sites = {
\   'je': {
\     'url': 'http://dictionary.infoseek.ne.jp/jeword/%s',
\   },
\   'ej': {
\     'url': 'http://dictionary.infoseek.ne.jp/ejword/%s',
\   },
\   'wiki': {
\     'url': 'http://ja.wikipedia.org/wiki/%s',
\   },
\ }
 
"デフォルトサイト
let g:ref_source_webdict_sites.default = 'je'
 
"出力に対するフィルタ。最初の数行を削除
function! g:ref_source_webdict_sites.je.filter(output)
  return join(split(a:output, "\n")[15 :], "\n")
endfunction
function! g:ref_source_webdict_sites.ej.filter(output)
  return join(split(a:output, "\n")[15 :], "\n")
endfunction
function! g:ref_source_webdict_sites.wiki.filter(output)
  return join(split(a:output, "\n")[17 :], "\n")
endfunction
 
nmap <Leader>dj :<C-u>Ref webdict je<Space>
nmap <Leader>de :<C-u>Ref webdict ej<Space>
nmap <Leader>dw :<C-u>Ref webdict wiki<Space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => quickrun
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup QuickrunAc
    autocmd!
    autocmd QuickrunAc BufNewFile,BufRead *Test.php setlocal ft=php.cakeunit
    autocmd QuickrunAc FileType quickrun AnsiEsc
augroup END

let g:quickrun_config = {}
let g:quickrun_config["_"] = {
\    'outputter/buffer/split'  : ':vertical botright', 
\ }
let g:quickrun_config["php.cakeunit"] = {
\    'command' : 'Console/cake',
\    'cmdopt'  : 'test app',
\    'exec'    : 'cd %s:h:h:h:h;%c %o %s:h:t/%s:t',
\    'outputter' : 'error', 
\    'outputter/error/error'   : 'quickfix', 
\    'outputter/error/success' : 'buffer', 
\    'outputter/buffer/split'  : ':vertical botright', 
\    'outputter/quickfix/into'        : 1, 
\    'outputter/quickfix/open_cmd'    : 'copen 30 ', 
\    'outputter/quickfix/errorformat' : '%f:%l,%m in %f on line %l',
\ }
"set splitright

"\    'outputter/buffer/split'  : ':rightbelow 8sp', 
"\    'outputter/buffer/split'  : '%{winwidth(0) * 2 < winheight(0) * 5 ? "" : "vertical"}',

nmap <Leader>r :QuickRun<CR>
"nmap <Leader>rt :QuickRun php.cakeunit<CR>
nmap <Leader>rp :QuickRun php<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MEMO:$ ctags --list-maps : ctags supported filetype.
"MEMO:$ ctags --list-kinds: ctags tlist setting.
nnoremap <leader>t :<C-u>Tlist<CR>
let g:tlist_php_settings        = 'php;n:namespace;c:class;i:interface;t:trait;f:function;d:constan'
let g:tlist_javascript_settings = 'js;o:object;f:function'
let g:Tlist_Exit_OnlyWindow     = 1
let g:Tlist_Show_One_File       = 1
let g:Tlist_Use_Right_Window    = 1
let g:Tlist_WinWidth            = 25
let Tlist_Ctags_Cmd             = '/usr/bin/ctags'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-phpfmt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:phpfmt_standard = 'PSR2'
"let g:phpfmt_autosave = 0
"let g:phpfmt_tmp_dir = $HOME . '/.vim_runtime/temp_dirs/'
"map <leader>pf :PhpFmt<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-php-cs-fixer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:php_cs_fixer_path = $HOME . '/.vim_runtime/bin/php-cs-fixer.phar'
let g:php_cs_fixer_rules = '@PSR2'         " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = '.php_cs.cache' " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config

nnoremap <silent><leader>pfd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplcache
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Omni completion
" imap <C-y> <C-x><C-o>

" let g:loaded_neocomplcache = 1

"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
"" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
"" Enable heavy features.
"" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 0
"" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 0
"
"" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ }
"
"" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"    let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return neocomplcache#smart_close_popup() . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
"
"" For cursor moving in insert mode(Not recommended)
""inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
""inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
""inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
""inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
"" Or set this.
""let g:neocomplcache_enable_cursor_hold_i = 1
"" Or set this.
""let g:neocomplcache_enable_insert_char_pre = 1
"
"" AutoComplPop like behavior.
""let g:neocomplcache_enable_auto_select = 1
"
"" Shell like behavior(not recommended).
""set completeopt+=longest
""let g:neocomplcache_enable_auto_select = 1
""let g:neocomplcache_disable_auto_complete = 1
""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
""autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
""autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
"
"" Enable heavy omni completion.
"if !exists('g:neocomplcache_force_omni_patterns')
"  let g:neocomplcache_force_omni_patterns = {}
"endif
"" let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"

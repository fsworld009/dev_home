" NeoBundle
" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif


 " runtime paths
 let s:plugin_path = "~/vim/bundle/"
 
 "force English
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

 " General settings
 set backspace=2                        "enable backspace key
 set tabstop=4 shiftwidth=4 expandtab   "insert 4 spaces for a tab, display tab characters as 4 spaces
 let mapleader = ","                    "change leader key to ','
 "set nowrap                               "no auto word wrapping
 
 " Use bash
 "set shell="sh.exe --login -i"
 "set shellcmdflag="--login -i"
 "
 "spell check
 set spelllang=en
 nnoremap <leader>S :set spell!<CR>
 
 " abbreviated motion keys for split moving
 nnoremap <C-Left> <C-w><Left>
 nnoremap <C-Right> <C-w><Right>
 nnoremap <C-Up> <C-w><Up>
 nnoremap <C-Down> <C-w><Down>
 
 " abbreviated motion keys for tab moving
 nnoremap ]t gt
 nnoremap [t gT
 nnoremap ]T :tabs<CR>
 nnoremap [T :tabclose<CR>
 
 " abbreviated motion keys for tab moving
 nnoremap ]b :bn<CR>
 nnoremap [b :bp<CR>
 nnoremap ]B :buffers<CR>
 " abbreviated motion keys for quickfix moving
 nnoremap ]c :cnext<CR>
 nnoremap [c :cprevious<CR>
 nnoremap ]C :copen<CR>

 "close buffers/kill buffers
 nnoremap [d :bd 
 nnoremap [D :bd<CR>
 nnoremap [C :close<CR>

 "remove highlight
 nnoremap [h :noh<CR>
 
 " editor styling, colorscheme specified after the scheme file is loaded
 syntax on
 
 set number
 set hlsearch
 
 " UTF-8
 set encoding=utf-8
 setglobal fileencoding=utf-8
 setglobal nobomb
 
 "folding settings http://smartic.us/2009/04/06/code-folding-in-vim/
 set foldmethod=indent   "fold based on indent
 set foldnestmax=10      "deepest fold is 10 levels
 set nofoldenable        "dont fold by default
 set foldlevel=1         

 "temp files location
 set backupdir=~/vimfiles/backup//
 set directory=~/vimfiles/swap//
 set undodir=~/vimfiles/undo//
 
 "Find and Replace (substitute)
 nnoremap <leader>fr :%s///gcI

 "redirect ex-command output to register x
 redir @x
 
 
 if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   execute "set runtimepath+=" .  s:plugin_path . "neobundle.vim/"
 endif

 " Required:
 call neobundle#begin(expand(s:plugin_path))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'Xuyuanp/nerdtree-git-plugin'
 nnoremap <leader>nt :NERDTreeToggle<CR>

 NeoBundle 'scrooloose/nerdcommenter'
 NeoBundle 'Yggdroot/indentLine'
 NeoBundle 'fsworld009/obsidian2.vim'
 NeoBundle 'tpope/vim-surround'

 NeoBundle 'scrooloose/syntastic'
 "let g:syntastic_quiet_messages = { "type": "style","level": "warnings"} 
 let g:syntastic_check_on_open = 0
 let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
 nnoremap ,yc :SyntasticCheck<CR>
 nnoremap ,ye :Errors<CR>
 let g:syntastic_check_on_wq=0
 let g:syntastic_enable_highlighting=0
 "active mode is broken when NERDTree is opened, workaround
 "autocmd BufWritePost *.* SyntasticCheck
 
 "vim-misc is required for vim-session
 NeoBundle 'xolox/vim-misc'
 NeoBundle 'xolox/vim-session'
 let g:session_autosave = 'yes'
 let g:session_autoload = 'yes'
 let g:session_autosave_periodic = 10
 
 "Surround plugin command remaps (all commands begin with <leader>s, it just makes more sense to me)
 "cs ysiw ds yss (V)S
 nmap <leader>sc cs
 nmap <leader>sd ds
 nmap <leader>sw ysiw
 nmap <leader>sW ysiW
 nmap <leader>ss yss
 vmap <leader>s S
 
 NeoBundle 'tpope/vim-repeat'

 NeoBundle 'Lokaltog/vim-easymotion'
 "EasyMotion key bindings
 nmap <Plug>(easymotion-prefix)s <Plug>(easymotion-s2)
 nmap <Plug>(easymotion-prefix)<Down> <Plug>(easymotion-j)
 nmap <Plug>(easymotion-prefix)<Up> <Plug>(easymotion-k)
 nmap <Plug>(easymotion-prefix)/   <Plug>(easymotion-sn)
 nmap <Plug>(easymotion-prefix).   <Plug>(easymotion-repeat)

 NeoBundle 'b3niup/numbers.vim' 
 "Numbers key bindings
 nnoremap <leader>n :NumbersToggle<CR>
 "nnoremap <leader>nn :NumbersOnOff<CR>

 NeoBundle 'majutsushi/tagbar'
 nmap <leader>tb :TagbarToggle<CR>

 NeoBundle 'Shougo/neocomplcache.vim'
 "let g:tagbar_ctags_bin = '~/vim/bin/ctags.exe' "this directory is already in $PATH, so this line is useless
 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_dictionary_filetype_lists = {
   \ 'default'    : '',
   \ 'css' : $HOME . 'vim/dict/css3.dict',
   \ 'javascript' : $HOME . 'vim/bundle/vim-node-dict/dict/node.dict,' . $HOME . 'vim/dict/javascript.dict',
   \}
 
 NeoBundle 'bling/vim-airline'
 let g:airline_theme = 'powerlineish'
 let g:airline#extensions#branch#enabled=1
 let g:airline#extensions#tabline#enabled = 1
 set laststatus=2
 
 " Undotree
 NeoBundle 'mbbill/undotree'
 nnoremap ,t :UndotreeToggle<CR>
 
 "Git integration
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'gregsexton/gitv'
 nnoremap <leader>gs :Gstatus<CR>
 nnoremap <leader>gd :Gdiff<CR>
 nnoremap <leader>gc :Gcommit<CR>
 nnoremap <leader>gl :Gitv<CR>
 nnoremap <leader>gg :Git 
 nnoremap <leader>g! :Git! 
 
 NeoBundle 'airblade/vim-rooter'
 
 

 
 source ~/projectview.vim 

  "Watchdog, asynchrounous syntax checking
  NeoBundle 'Shougo/vimproc.vim'

  NeoBundle 'Shougo/vimshell.vim'

  " Unite.vim, fuzzy search everything
  NeoBundle 'Shougo/unite.vim'
  nnoremap <leader>uf :Unite -buffer-name=files -start-insert file_rec/async<cr>
  nnoremap <leader>ug :Unite -buffer-name=grep -start-insert grep:.<cr>
  nnoremap <leader>uc :Unite -buffer-name=command -start-insert command<cr>
  nnoremap <leader>uy :Unite -buffer-name=yank history/yank<cr>
  nnoremap <leader>ub :Unite -buffer-name=buffer -quick-match buffer<cr>
  nnoremap <leader>ut :Unite -buffer-name=tab -quick-match tab<cr>
  nnoremap <leader>ur :Unite -buffer-name=register -quick-match register<cr>
  nnoremap <leader>um :Unite -buffer-name=mark -quick-match bookmark<cr>
  nnoremap <leader>u<leader> :Unite -buffer-name=mapping -start-insert mapping<cr>
  nnoremap <leader>uu :Unite -buffer-name=Unite source<CR>


 " Parenthesis
 NeoBundle 'oblitum/rainbow'
 au FileType c,cpp,javascript,java call rainbow#load()

 " Mark down
 "NeoBundle 'tpope/vim-markdown'
 NeoBundle 'kmanalo/vim-flavored-markdown'
 augroup markdown
     au!
     au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
 augroup END

 "Copy between register " (default register) and * (Windows clipboard)
 nnoremap <leader>>> :let @*=@"<CR>
 nnoremap <leader><< :let @"=@*<CR>


 " HTML, XML
 autocmd FileType html,markdown,xml setlocal shiftwidth=2 tabstop=2 "set indention to 2 spaces for HTML files
 NeoBundle 'mattn/emmet-vim'
 NeoBundle 'vim-scripts/matchit.zip'
 NeoBundle 'othree/html5-syntax.vim'
 autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
 autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
 let g:syntastic_html_checkers = ['tidy']
 let g:syntastic_html_tidy_exec = 'tidy5'
 NeoBundle 'valloric/MatchTagAlways' "Require python

 " CSS
 NeoBundle 'hail2u/vim-css3-syntax'
 NeoBundle 'ap/vim-css-color'
 NeoBundle 'KabbAmine/vCoolor.vim'
 NeoBundle 'mtscout6/vim-tagbar-css'
 autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
 let g:syntastic_css_checkers = ['csslint']

 " SASS
 NeoBundle 'tpope/vim-haml'


 "javascript
 NeoBundle 'jelera/vim-javascript-syntax'
 "au FileType javascript call JavaScriptFold()

 NeoBundle 'othree/javascript-libraries-syntax.vim'
 let g:used_javascript_libs = 'jquery,underscore,backbone,angularjs'
 let g:syntastic_js_checkers = ['jshint']
 "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
 autocmd FileType javascript setlocal omnifunc=tern#Complete
 NeoBundle 'marijnh/tern_for_vim', { 'build' : {
             \ 'windows' : 'npm install' }, }

 " JSON
 NeoBundle 'elzr/vim-json'
 let g:vim_json_syntax_conceal = 0
 autocmd FileType json setlocal foldmethod=syntax
 
 " Node.js
 NeoBundle 'moll/vim-node'
 NeoBundle 'guileen/vim-node-dict'

 
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on
 colorscheme obsidian2

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

":set shellslash
"set shell=sh.exe
"set shellcmdflag=-ci


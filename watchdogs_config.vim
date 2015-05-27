" source:
" http://h-miyako.hatenablog.com/entry/2014/10/18/031830
" https://github.com/KazuakiM/vim-qfstatusline
" http://d.hatena.ne.jp/osyo-manga/20120924/1348473304
" http://d.hatena.ne.jp/osyo-manga/20120919/1348054752


  "NeoBundle 'thinca/vim-quickrun'
  "NeoBundle 'osyo-manga/shabadou.vim'
  "NeoBundle 'osyo-manga/vim-watchdogs'
  "NeoBundle 'jceb/vim-hier'
  "NeoBundle 'dannyob/quickfixstatus'
  "NeoBundle 'KazuakiM/vim-qfsigns'
  "NeoBundle 'KazuakiM/vim-qfstatusline'


    "let g:watchdogs_check_BufWritePost_enable = 1
    let g:watchdogs_check_BufWritePost_enables = {
            \ "cpp" : 1,
            \ "javascript" : 1
            \}
    "let g:watchdogs_check_CursorHold_enable = 1
    let g:watchdogs_check_CursorHold_enables = {
              \ 'javascript': 1,
              \ 'cpp' : 1}

let s:config = {
            \   "_" : {
            \       "runner" : "vimproc",
            \       "runner/vimproc/updatetime" : 2,
            \   },
            \   "watchdogs_checker/_" : {
            \       "hook/u_nya_/enable" : 1,
            \       "hook/inu/enable" : 0,
            \       "hook/unite_quickfix/enable" : 0,
            \       "hook/echo/enable" : 0,
            \       "hook/back_buffer/enable" : 0,
            \       "hook/close_unite_quickfix/enable" : 0,
            \       "hook/close_buffer/enable_exit" : 0,
            \       "hook/close_quickfix/enable_exit" : 1,
            \       "hook/redraw_unite_quickfix/enable_exit" : 0,
            \       "hook/close_unite_quickfix/enable_exit" : 1,
            \       "outputter/quickfix/open_cmd" :"",
            \       'hook/qfstatusline_update/enable_exit':   1,
            \       'hook/qfstatusline_update/priority_exit': 4
            \   },
            \
            \  "javascript/watchdogs_checker":{
            \       "type": 'watchdogs_checker/jshint'
            \  },
            \
            \   "cpp/watchdogs_checker" : {
            \       "hook/add_include_option/enable" : 1,
            \       "type" : "watchdogs_checker/g++",
            \   },
            \
            \
            \   "watchdogs_checker/g++" : {
            \       "command"   : "g++",
            \       "exec"      : "%c %o -fsyntax-only %s:p ",
            \   },
            \
            \
            \}
let g:quickrun_config = {}
call extend(g:quickrun_config, s:config)
unlet s:config
call watchdogs#setup(g:quickrun_config)

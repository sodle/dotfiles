let g:go_addtags_transform = "snakecase"
let g:go_auto_sameids = 0
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_test_show_name = 1

let g:go_def_mode='gopls'
let g:go_gorename_command = 'gopls'
let g:go_info_mode='gopls'

" https://octetz.com/docs/2019/2019-04-24-vim-as-a-go-ide/
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

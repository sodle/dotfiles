"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }

"" https://github.com/autozimu/LanguageClient-neovim
"" https://github.com/autozimu/LanguageClient-neovim/wiki/Java
""
"" Required for operations modifying multiple buffers like rename.
"set hidden

"let g:LanguageClient_serverCommands = {
"    \ 'java': ['jdtls', '-data', getcwd()],
"    \ }

"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"" Or map each action separately
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"let g:LanguageClient_loggingLevel = 'INFO'
"let g:LanguageClient_loggingFile =  expand('~/.local/share/nvim/LanguageClient.log')
"let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')

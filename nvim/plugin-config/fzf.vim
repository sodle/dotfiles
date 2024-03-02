" Search for files with ctrl+f
nnoremap <silent> <C-f> :Files!<cr>

" Search within a files
nnoremap <silent> <Leader>f :Rg!<cr>

" Override :Rg to use --hidden (but also ignore .git)
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -g=!.git -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

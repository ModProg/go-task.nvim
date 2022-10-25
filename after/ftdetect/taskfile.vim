" Language:   Taskfile
" Maintainer: ModProg
" URL:        https://github.com/modprog/go-task.nvim
" LICENSE:    MIT

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufRead,BufNewFile Taskfile.yml set filetype=taskfile
autocmd BufRead,BufNewFile Taskfile.yaml set filetype=taskfile
autocmd BufRead,BufNewFile Taskfile.dist.yml set filetype=taskfile
autocmd BufRead,BufNewFile Taskfile.dist.yaml set filetype=taskfile

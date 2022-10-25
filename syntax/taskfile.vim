" Language:   Taskfile
" Maintainer: ModProg
" URL:        https://github.com/modprog/go-task.nvim
" LICENSE:    MIT

runtime! syntax/yaml.vim

syntax region tfVariable start='{{' end='}}' contained containedin=yamlFlowString display
highlight default link tfVariable Define

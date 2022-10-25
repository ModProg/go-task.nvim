" task#run#Check {{{
function! task#run#Check() abort
    if executable('task')
        let executable = 'task'
    elseif executable('go-task')
        let executable = 'go-task'
    else
        echo 'vim-task: go-task is not installed.'
        return 0
    endif
    if !glob('{Taskfile,Taskfile.dist}.{yml,yaml}')
        echo 'vim-task: taskfile not found'
        return 0
    endif
    return executable
endfunction
" }}}

" task#run#Default {{{
function! task#run#Default() abort
  let executable = task#run#Check()
  if executable
    execute ':! ' . executable
  endif
endfunction
"}}}

" task#Run#Ask {{{
function! task#run#Ask() abort
  call inputsave()
  let task = input("vim-task to run: ", "", "file")
  call inputrestore()

  let executable = task#run#Check()
  if executable
    execute ':! ' . executable . ' ' . task
  endif
endfunction
" }}}

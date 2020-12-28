" task#run#Check {{{
function! task#run#Check() abort
  let check = 0
  if executable('task')
    if filereadable('Taskfile.yml')
      let check = 1
    else
      echo 'vim-task: taskfile not found'
    endif
  else
    echo 'vim-task: go-task is not installed.'
  endif

  return check
endfunction
" }}}

" task#run#Default {{{
function! task#run#Default() abort
  let check = task#run#Check()
  if check
    execute ':! task'
  endif
endfunction
"}}}

" task#Run#Ask {{{
function! task#run#Ask() abort
  call inputsave()
  let task = input("vim-task to run: ", "", "file")
  call inputrestore()

  let check = task#run#Check()
  if check
    execute ':! task '. task
  endif
endfunction
" }}}

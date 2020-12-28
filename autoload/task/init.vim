function! task#init#Init() abort
  command! TaskDefault :call task#run#Default()
  command! TaskAsk :call task#run#Ask()
endfunction

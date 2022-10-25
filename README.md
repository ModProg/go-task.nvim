vim-task
========

taskfile highlighting and run tasks from vim via [go-task](https://taskfile.dev/#/).

## installation

vim-task relies on go-task. follow the [installation instructions](https://taskfile.dev/#/installation) for your os.

use git or your plugin manager of choice to install vim-task.

### commands

* `TaskDefault`: runs the `default` task defined in Taskfile.yml.
* `TaskAsk`: asks for a task name, then runs that task defined in Taskfile.yml.

#### mapping example

add the following to your vim configuration to the default task:

```vimscript
" vim-task {{{
nnoremap <silent><Leader>t :execute 'TaskDefault'<CR>
" }}}
```

## acknowledgements

* [the go-task contributors and maintainers.](https://github.com/go-task/task/graphs/contributors)
* [steve losh's](https://stevelosh.com/) book, [learn vimscript the hard way](https://learnvimscriptthehardway.stevelosh.com/), was a great and useful read.

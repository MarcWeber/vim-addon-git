I wrote a git interface to the git commands I use most often.
Enjoy.

commands:
    see plugin/vim_addon_git.vim

or
    :*Git<c-d>

:StatusGit
will open a special buffer which maps some very common actions.
See vim_addon_git#Names() in autoload/vim_addon_git.vim

Tested on Linux only

On all views you can use :e! to refresh them

Are you still missing documentation? Tell me.

INSTALLATION:


* way 1: (recommended)
  call scriptmanager#Activate(["vim-addon-git"])
  Enjoy!


* way2 : (manual)
  see vim-addon-git-addon-info.txt. You have to get all dependencies
  as well


TODO:



* make gf (and BBlameGit!) aware of current commit if
  used on views. Currently always HEAD is used


credits to Tass who finally podded me enough to move the code out of tovl ..

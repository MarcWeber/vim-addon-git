" I chose to let all commands end by Git intentionally
" That's faster to type
" All commands which act on a buffer only start with B
command -nargs=0 BBlameGit call views#View("exec",["git","blame",expand("%")])
command -nargs=0 DiffGit call views#View("exec", ["git","diff"])
" checkout current file (throw away your changes). Then reload file
" I should be using e! when ! is given only (TODO) ?
command -nargs=* BCheckoutGit  exec '!git checkout '.expand('%')." "| e!
command -nargs=0 BDiff update| call views#View("exec",["git","diff",expand("%")])
command -nargs=0 BDiffSplitGit call vim_addon_git#BDiffSplitGit(<f-args>)
command -nargs=0 DiffCachedGit call views#View("exec",["git","diff","--cached"])
command -nargs=0 BDiffCachedGit update | call views#View("exec",["git","diff","--cached",expand("%")])
command -nargs=0 BAddGit update|!git add %
command -nargs=0 BAddGitPatch update|!git add --patch %
command -nargs=0 GitInit !git init
command -nargs=* LogGit call vim_addon_git#GitLog(<f-args>)


command -nargs=0 BCommitGit update| call vim_addon_git#BCommit()
command -nargs=0 CommitGit call vim_addon_git#Commit()
command -nargs=0 StatusGit call vim_addon_git#StatusAndActions()
command -nargs=0 LogThisFileGit call views#View("exec",["git","log","--",expand("%")])

" used by tmp buffers
augroup vim_addon_git
augroup end

call on_thing_handler#AddOnThingHandler('g',funcref#Function("return vim_addon_git#GitGotoLocations()"))

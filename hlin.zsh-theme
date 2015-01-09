local user='%{$fg[cyan]%}%n%{$reset_color%}'
local host='%{$fg[green]%}%m%{$reset_color%}'
local pwd='%{$fg[yellow]%}%1~%{$reset_color%}'

# This stuff is for the right side prompt
local rvm=''
if which rvm-prompt &> /dev/null; then
  rvm='%{$fg[green]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm='%{$fg[green]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%}) '
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜  "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{ ✔%G%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"

# The full list. 
# Source: https://github.com/olivierverdier/zsh-git-prompt/blob/master/zshrc.sh
# ZSH_THEME_GIT_PROMPT_PREFIX="("
# ZSH_THEME_GIT_PROMPT_SUFFIX=")"
# ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
# ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
# ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
# ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
# ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
# ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
# ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"

# What is actually shown as output
PROMPT="[${user}@${host}:${pwd}]$ "
RPROMPT="${return_code} ${git_branch} ${rvm}"
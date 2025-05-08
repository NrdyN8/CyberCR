#  _____       _               _____ ______ 
# /  __ \     | |             /  __ \| ___ \
# | /  \/_   _| |__   ___ _ __| /  \/| |_/ /
# | |   | | | | '_ \ / _ \ '__| |    |    / 
# | \__/\ |_| | |_) |  __/ |  | \__/\| |\ \ 
#  \____/\__, |_.__/ \___|_|   \____/\_| \_|
#         __/ |                             
#        |___/                              

local user_symbol="%{$fg[green]%}#%{$reset_color%}"
local current_dir="%B%{$fg[blue]%}%~ %{$reset_color%}%b"
local new_line=$'\n'

local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'

PROMPT="%F{082}╭─%f ${current_dir}${new_line}%F{082}╰─%f ${vcs_branch}${user_symbol} "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

ZSH_THEME_HG_PROMPT_PREFIX="$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_HG_PROMPT_SUFFIX="$ZSH_THEME_GIT_PROMPT_SUFFIX"
ZSH_THEME_HG_PROMPT_DIRTY="$ZSH_THEME_GIT_PROMPT_DIRTY"
ZSH_THEME_HG_PROMPT_CLEAN="$ZSH_THEME_GIT_PROMPT_CLEAN"
#!/bin/bash
#
# Loads various settings and helpers for git into the current bash shell
#
# Requirements
# - Git Bash Completions
# - Git-Prompt
# - In Debian both scripts are already included in the git packages,
#   no further action needed
# - Otherwise you need to fetch them by yourself from
#   https://github.com/git/git/tree/master/contrib/completion
#   - Don't forget to update the source lines below
#
# Usage
# - Source Gitmode.bash
#   Best practise: Juste make yourself an alias from this:
#   alias Gitmode='source <path_to>/Gitmode.bash'
#
# Functions
# - git-prompt
#   - A special Slow Mode is available, where the prompt is only updated
#     when invoked as "Git"
#     When no update is wanted (to be even faster), call with "git"
#     This special behaviour is only needed on "slow" environments like
#     Cygwin, enable it with the setting below
# - git-completion.bash, bash completion module

# *** Settings
# 1: Enable Slow Mode, 0: Disable Slow Mode
# GIT_PROMPT_SLOW_MODE=1
GIT_PROMPT_SLOW_MODE=0

# *** git-prompt
# In case we sourced Gitmode.bash before:
alias git &> /dev/null
if [[ $? -eq 0 ]]; then
   unalias git
fi
source /usr/lib/git-core/git-sh-prompt || exit 1

# Configure the git-prompt, see the sourced script for explanations
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_DESCRIBE_STYLE="branch"


# New prompt, use my default as starting point
# PS1='\[\e]0;\w\a\]\n\[\e[32m\]\w\[\e[0m\]\n${_git_ps_string}$ '
PS1='\[\e]0;\w\a\]\n\[\e[32m\]\w\n\[\e[0;33m\]${_git_ps_string}\[\e[0m\]$ '

# Define function to update the git string
_update_git_ps_string() {
    # First execute command with real git
    $(which git) "$@"

    # We were git? Then update the string
    # echo "Updating git string"  # Debug
    # OK, now we need to remove the alias again
    if [ $GIT_PROMPT_SLOW_MODE -ne 1 ]; then
	# No Slow Mode
	unalias git
     fi
    _git_ps_string=$(__git_ps1 "(%s) ")
    # And set it again
    if [ $GIT_PROMPT_SLOW_MODE -ne 1 ]; then
	# No Slow Mode
	alias git="_update_git_ps_string"
     fi
}

# And now, replace git with my alias
if [ $GIT_PROMPT_SLOW_MODE -eq 1 ]; then
    # echo "Gitmode Slow Mode"
    alias Git="_update_git_ps_string"
    # The fastpass to the git command - no alias required
    # alias git="$(which git)"
else
    # echo "Normal Gitmode Mode"
    alias git="_update_git_ps_string"
fi

# And now, update prompt for the first time
_git_ps_string=$(__git_ps1 "(%s) ")
# When no content (e.g. not in a git directory) give some note that
# we're here
if [ -z "${_git_ps_string}" ]; then
    _git_ps_string="(Gitmode) "
fi


# *** git-completion.bash, bash completion module
source /usr/share/bash-completion/completions/git || exit 1
if [ $GIT_PROMPT_SLOW_MODE -eq 1 ]; then
    # In slow mode, also complete for Git
    __git_complete Git __git_main
fi

# *** Done
echo "Loaded git prompt and bash completion, hope you sourced me!"

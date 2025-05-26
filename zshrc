export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Pronmpt configuration

function dir_icon {
	if [[ "$PWD" == "$HOME" ]]; then
		echo "%B%F{black}%f%b"
	else
		echo "%B%F{cyan}%f%b"
	fi
}

function parse_git_branch {
	local branch
	branch=$(git symbolic-ref --short HEAD 2> /dev/null)
	if [ -n "$branch" ]; then
		echo " [  $branch ]"
	fi
}

PROMPT='%F{blue}󰣇%f %F{white}%n%f $(dir_icon) %F{red}%~%f%${vcs_info_msg_0_} %F{yellow}$(parse_git_branch)%f %(?.%B%F{green}.%F{red})%f%b '

# Aliases

# alias l="eza -lh --icons=auto"
# alias ls="eza -ha --icons=auto --sort=name --group-directories-first"


# Created by `pipx` on 2025-05-16 00:22:16
export PATH="$PATH:/home/dangmoz/.local/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dangmoz/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dangmoz/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dangmoz/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dangmoz/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


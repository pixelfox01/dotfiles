# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v

export PATH="$PATH:/opt/nvim-linux64/bin"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search

path+=('/home/imran/.local/bin')

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.nvm/nvm.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

mkcd() {
  mkdir -p "$1" && cd "$1"
}

eval "$(zoxide init zsh)"

export EDITOR="nvim"
export BROWSER="wslview"

alias cc="clear -x"

alias l="eza --sort Name"
alias ls="eza --sort Name"
alias ll="eza --sort Name --long"
alias la="eza --sort Name --long --all"
alias lr="eza --sort Name --long --recurse"
alias lra="eza --sort Name --long --recurse --all"
alias lt="eza --sort Name --long --tree --git-ignore"
alias lta="eza --sort Name --long --tree --all"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# vim: set ft=zsh:
autoload -Uz compinit
compinit -i
source ~/.zsh_plugins.sh

setopt extendedglob
setopt autocd
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

alias ls="ls --color=tty"

bindkey -e

export TERM="screen-256color"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

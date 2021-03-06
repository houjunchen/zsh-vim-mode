# Original from oh-my-zsh plugins.

function zle-line-init zle-keymap-select {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

bindkey -v

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# if mode indicator wasn't setup by theme, define default
if [[ "$N_MODE" == "" ]]; then
  N_MODE="%{$fg[red]%}[N]%{$reset_color%}"
fi

if [[ "$I_MODE" == "" ]]; then
  I_MODE="%{$fg[white]%}[I]%{$reset_color%}"
fi

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$N_MODE}/(main|viins)/$I_MODE}"
}

# define right prompt, if it wasn't defined by a theme
if [[ "$RPS1" == "" && "$RPROMPT" == "" ]]; then
  RPS1='$(vi_mode_prompt_info)'
fi

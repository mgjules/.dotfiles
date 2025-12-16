DISABLE_AUTO_TITLE="true"

# AUTOCOMPLETION

# initialize autocompletion
autoload -U compinit && compinit

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
setopt HIST_EXPIRE_DUPS_FIRST

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# pnpm
export PNPM_HOME="/home/mike/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# export PATH="$HOME/.local/share/gem/ruby/3.1.0/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Change config directory for lazygit.
export XDG_CONFIG_HOME="$HOME/.config"

# VIM MODE
# bindkey -v

# export RUBY_CONFIGURE_OPTS="--with-zlib-dir=$(brew --prefix zlib) --with-openssl-dir=$(brew --prefix openssl@1.1) --with-readline-dir=$(brew --prefix readline) --with-libyaml-dir=$(brew --prefix libyaml) --with-gdbm-dir=$(brew --prefix gdbm)"
export CFLAGS="-Wno-error=implicit-function-declaration"

# IMPORTANT: kitty-scrollback.nvim only supports zsh 5.9 or greater for command-line editing,
# please check your version by running: zsh --version

# add the following environment variables to your zsh config (e.g., ~/.zshrc)

# autoload -Uz edit-command-line
# zle -N edit-command-line
#
# function kitty_scrollback_edit_command_line() { 
#   local VISUAL='$HOME/.local/share/nvim/lazy/kitty-scrollback.nvim/scripts/edit_command_line.sh'
#   zle edit-command-line
#   zle kill-whole-line
# }
# zle -N kitty_scrollback_edit_command_line
#
# bindkey '^x^e' kitty_scrollback_edit_command_line

# [optional] pass arguments to kitty-scrollback.nvim in command-line editing mode
# by using the environment variable KITTY_SCROLLBACK_NVIM_EDIT_ARGS
# export KITTY_SCROLLBACK_NVIM_EDIT_ARGS=''

# Move to directories without cd
setopt autocd

# The most important aliases ever (the only thing I borrowed from OMZ)
alias l='ls -lah --color'
alias la='ls -lAh --color'
alias ll='ls -lh --color'
alias ls='ls -G --color'
alias lsa='ls -lah --color'

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"

# opencode
export PATH=/home/mike/.opencode/bin:$PATH

# Go
export PATH=$PATH:$(go env GOPATH)/bin

# NVM
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by `rbenv init` on Fri Dec  5 05:16:15 PM +04 2025
eval "$(rbenv init - --no-rehash zsh)"

DISABLE_AUTO_TITLE="true"

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# plugins
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.config/zsh/zsh-completions/src $fpath)

# zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=transparent,fg=cyan,bold"
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=transparent,fg=red,bold"
export HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS="i"
export HISTORY_SUBSTRING_SEARCH_PREFIXED="yes"

# autocompletion
autoload -U compinit && compinit

# The most important aliases ever (the only thing I borrowed from OMZ)
alias l='ls -lah --color'
alias la='ls -lAh --color'
alias ll='ls -lh --color'
alias ls='ls -G --color'
alias lsa='ls -lah --color'

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/.local/bin:$PATH"

# Change config directory for lazygit.
export XDG_CONFIG_HOME="$HOME/.config"

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

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# Go
export PATH=$PATH:$(go env GOPATH)/bin

# Added by `rbenv init` on Fri Dec  5 05:16:15 PM +04 2025
eval "$(rbenv init - --no-rehash zsh)"

# Nvidia stuffs to enable hardware acceleration
export NVD_BACKEND=direct
export LIBVA_DRIVER_NAME=nvidia
## Mozilla firefox support
export MOZ_X11_EGL=1
export MOZ_DISABLE_RDD_SANDBOX=1
export CUDA_DISABLE_PERF_BOOST=1xport LIBVA_DRIVER_NAME="nvidia"

# Disable sound
setopt NO_BEEP

# Batman
alias cat="bat --paging=never"

export EDITOR=nvim

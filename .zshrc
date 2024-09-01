# CodeWhisperer pre block. Keep at the top of this file.
# # If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="simple" # set by `omz`

plugins=(yarn colored-man-pages zsh-autosuggestions zsh-syntax-highlighting macos jump tmux)
#plugins+=(zsh-better-npm-completion)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
    export TERM=xterm-256color
else
    export EDITOR='mvim'
fi

export FZF_CTRL_R_OPTS="--reverse"
export FZF_TMUX_OPTS="-p"
export EDITOR=nvim
export T_REPOS_DIR="$HOME/programs"

eval "$(zoxide init zsh)"

# append
path+=('/Users/drew/.config/bin')
path+=('/Users/drew/bin')
path+=('/Users/drew/go/bin')
path+=('/Users/drew/.config/scripts')
#path+=('/Users/drew/bin/jdtls/bin')




# Open vs code and close
alias zr="zoxide remove -i"
alias stopy="brew services stop yabai"
alias lg="lazygit"
alias gg="git log --oneline --decorate --graph"
alias v="nvim"
alias ll="eza --icons=always -l -a"
alias ls="eza -a"
alias ld="lazydocker"
alias bp="bat package.json"
alias updates="npx npm-check-updates --interactive --format group"

# 4 day trial
# alias nvim="cursor ."


eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# pnpm
export PNPM_HOME="/Users/drew/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/drew/.bun/_bun" ] && source "/Users/drew/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Users/drew/Library/Python/3.9/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export GROQ_API_KEY=$(cat $HOME/key.txt)
export ANTHROPIC_API_KEY=$(cat $HOME/anthropic.txt)
export OPENROUTER_API_KEY=$(cat $HOME/openrouter.txt)
export HOMEBREW_NO_AUTO_UPDATE=1


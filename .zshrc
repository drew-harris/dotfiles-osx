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

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(yarn colored-man-pages zsh-autosuggestions zsh-syntax-highlighting macos jump tmux)
plugins+=(zsh-better-npm-completion)

source $ZSH/oh-my-zsh.sh
source /Users/drew/.oh-my-zsh/custom/plugins/forgit
source /Users/drew/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
    export TERM=xterm-256color
else
    export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export FZF_CTRL_R_OPTS="--reverse"
export FZF_TMUX_OPTS="-p"
export EDITOR=nvim
export T_REPOS_DIR="$HOME/programs"

eval "$(zoxide init zsh)"

# append
path+=('/Users/drew/.config/bin')
path+=('/Users/drew/bin')
path+=('/Users/drew/bin/jetbrains/')
path+=('/Users/drew/flutter/flutter/bin')
path+=('/Users/drew/bin/proto/bin')
path+=('/Users/drew/go/bin')
path+=('/Users/drew/bin/jdtls/bin')
path+=('/Users/drew/programs/fmc/final-autonomous-code-assistant-agent-drew-harris/Code/target/debug')
# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize

export DENO_INSTALL="/Users/drew/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export HELIX_RUNTIME="/Users/drew/clones/helix/runtime"



# Open vs code and close
alias cx="code . && exit"
alias cxx="code . && tmux detach -P"
alias zr="zoxide remove -i"
alias stopy="brew services stop yabai"
alias lg="lazygit"
alias gg="git-graph"
alias v="nvim"
alias ll="exa -l -a"
alias ls="exa -a"
alias ld="lazydocker"
alias bp="bat package.json"

alias benvim='NVIM_APPNAME="bens-config" nvim'

eval "$(starship init zsh)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/drew/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/drew/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/drew/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/drew/google-cloud-sdk/completion.zsh.inc'; fi

# source ~/.config/bin/zsh-better-npm-completion

fpath+=~/.zfun

# bun completions
[ -s "/Users/drew/.bun/_bun" ] && source "/Users/drew/.bun/_bun"
export PATH=$PATH:/Users/drew/.spicetify
# export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/drew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/drew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/drew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/drew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# # CodeWhisperer post block. Keep at the bottom of this file.
#

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

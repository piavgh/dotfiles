# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/piavgh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(
    git
    zsh-autosuggestions
    history-substring-search
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# bindkey '\e[A' history-beginning-search-backward
# bindkey '\e[B' history-beginning-search-forward

export PATH="/usr/local/sbin:$PATH"

eval "$(starship init zsh)"

eval "$(fnm env)"

eval $(thefuck --alias)

# Alias
alias dup="docker compose up -d"
alias ddown="docker compose down -v --remove-orphans"

# Go
export GOPATH=$HOME/go
export PATH="$PATH:$GOROOT/bin"
export PATH="$PATH:$GOPATH/bin"

# Geth
export ETH_KEYSTORE=///Users/piavgh/Library/Ethereum/keystore/UTC--2023-02-05T10-36-48.962384000Z--631cf2487c312cf0659f9b6b93ec93dffefbf83e

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/piavgh/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/piavgh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/piavgh/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/piavgh/google-cloud-sdk/completion.zsh.inc'; fi

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

# kubectl
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
function kubectl() {
    if ! type __start_kubectl >/dev/null 2>&1; then
        source <(command kubectl completion zsh)
    fi

    command kubectl "$@"
}

export KUBE_EDITOR=/usr/local/bin/hx
USE_GKE_GCLOUD_AUTH_PLUGIN=True

export PATH="$PATH:/Users/piavgh/.foundry/bin"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# sops & age
export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt
export EDITOR=hx

# cd commands
eval "$(jump shell)"
eval "$(zoxide init zsh)"

export PATH="$PATH:/Users/piavgh/.bifrost/bin"

# Find text
# -r or -R is recursive,
# -n is line number, and
# -w stands for match the whole word.
# -i stands for ignore case (optional in your case).
alias grnwi="grep -Rnwi"

# Huff
export PATH="$PATH:/Users/piavgh/.huff/bin"

# Aliases
alias removeoldbranchs="git branch -vv | grep ': gone]'|  grep -v '\*' | awk '{ print $1; }' | xargs -r git branch -df"

## Terminal Multiplexer
alias zi="zellij"
# pnpm
export PNPM_HOME="/Users/piavgh/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/zoro/.oh-my-zsh"
# Load and initialize the completion system ignoring insecure directories.
autoload -Uz compinit && compinit -i

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(git zsh-autosuggestions yarn nvm node npm zsh-syntax-highlighting)

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
alias co='code .'
alias gcop='git config user.name "soulsam480" & git config user.email "soulsam480@hotmail.com"'
alias gcow='git config user.name "sambitevidev" & git config user.email "sambit@evidev.tech"'
alias gcoh='git config user.name "sambithunter" & git config user.email "smbit.sahoo@huntertechnology.com"'
alias pip='pip3'
alias cdp='cd projects/personal'
alias cdw='cd projects/work'


# ALIASES
alias p='pnpm'

# Packages
alias pa='pnpm add'
alias pad='pnpm add --save-dev'
alias pap='pnpm add --save-peer'
alias prm='pnpm remove'
alias pin='pnpm install'
alias pun='pnpm uninstall'
alias pls='pnpm list'
alias pout='pnpm outdated'
alias pau='pnpm audit'
alias pwhy='pnpm why'
alias pui='pnpm update --interactive'
alias puil='pnpm update --interactive --latest'

# Global packages
alias pga='pnpm add --global'
alias pgls='pnpm list --global'
alias pgrm='pnpm remove --global'
alias pgu='pnpm update --global'

# Scripts
alias prun='pnpm run'
alias pd='pnpm run dev'
alias pb='pnpm run build'
alias ps='pnpm run serve'
alias pst='pnpm start'
alias pt='pnpm test'
alias ptc='pnpm test --coverage'
alias pln='pnpm run lint'
alias pdoc='pnpm run doc'

# Miscs
alias ph='pnpm help'
alias pi='pnpm init'
alias ppub='pnpm publish'
alias psv='pnpm server'

# pnpx
alias px='pnpm dlx'

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export NVM_DIR="$HOME/.nvm"
export PATH="/usr/share/code/bin:$PATH"
export PATH="$(yarn global bin):$PATH"
# export PATH=$PATH:$(go env GOPATH)/bin 
# export ANDROID_HOME="$HOME/Android/Sdk"
# export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
# PATH=$PATH:$ANDROID_SDK_ROOT/tools; PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

eval "$(starship init zsh)"

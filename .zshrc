# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="robbyrussell"

ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(
git
zsh-autosuggestions
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


# User SSH Aliases
alias stma="ssh steme@176.53.161.194"
alias stmr="ssh root@176.53.161.194"
# alias epica="ssh epic@89.223.126.37"
# alias epicr="ssh root@89.223.126.37"
# alias epicr2="ssh root@217.18.63.210"
# alias epica2="ssh epic@217.18.63.210"
# alias toysa="ssh detailing@188.225.74.252"
# alias toysr="ssh root@188.225.74.252"
# alias regr="ssh root@80.78.253.44"
# alias rega="ssh admin@80.78.253.44"
alias timewebr="ssh root@185.200.241.74"
alias timeweba="ssh geburah@185.200.241.74"
alias amazon="ssh ubuntu@172.26.8.229"
alias amazonn="ssh ubuntu@3.71.240.17"
alias outline="ssh admin@13.40.124.241"
alias amnezia="ssh ubuntu@3.79.194.81"
alias homerr="ssh root@90.156.224.142"
alias homera="ssh homer@90.156.224.142"
alias bartr="ssh root@92.53.127.50"
alias barta="ssh bart@92.53.127.50"

# ABP Servers
alias dp01="ssh root@176.9.85.144"   	  # HETZNER - German BackUp Server
alias dp02="ssh root@142.93.184.73"  	  # DigitalOcean -  ABP International sites
alias dp03="ssh root@68.183.43.228"  	  # DigitalOcean - Booka OLD Site
alias dp04="ssh root@87.242.72.175"  	  # MasterHost - NEW BackUP Server
alias dp05="ssh root@141.95.35.158" 	  # OVH Cloud - New Storage server

alias dp06="ssh root@145.239.3.108" 	  # OVH Cloud New-New Storage Server

alias dp08="ssh root@195.201.80.22"  	  # HETZNER - Stars (Push) servers
alias dp08-itpromedia="ssh root@195.201.80.22 -p 40002"        # itpromedia
alias dp08-old-dmpush="ssh root@195.201.80.22 -p 40003"        # OLD dmpush
alias dp08-old-booka-push="ssh root@195.201.80.22 -p 40004"    # OLD BOOKA pushes
alias dp08-diet-push="ssh root@195.201.80.22 -p 40005"         # Diet pushes
alias dp08-new-dmpush="ssh root@195.201.80.22 -p 40006"        # NEWdmpush
alias dp08-diet-backend="ssh root@195.201.80.22 -p 40007"      # Diet backeed
alias dp08-diet-base="ssh root@195.201.80.22 -p 40008"         # Diet Base
alias dp08-old-booka-backend="ssh root@195.201.80.22 -p 40009" # OLD Booka backend

alias dp09="ssh root@95.213.244.180" 	 		 # SELECTEL MAIN  - Plist Locations
alias dp09-lbstathub="ssh root@95.213.244.180 -p 40002"  # SELECTEL MAIN - lbstathub
alias dp09-dd="ssh root@95.213.244.180 -p 40004" 	 # SELECTEL MAIN - dd

alias dp12="ssh root@144.76.113.35"   	  # HETZNER - Dev Server
alias dp12-dsrvc="ssh root@144.76.113.35 -p 40002"       # Gillab and redmine
alias dp12-reports="ssh root@144.76.113.35 -p 40003"     # Apple reports generator
alias dp12-monitor="ssh root@144.76.113.35 -p 40004"     # NOT USED
alias dp12-checker="ssh root@144.76.113.35 -p 40005"     # Edgars script -- NOT USED
alias dp12-royalty="ssh root@144.76.113.35 -p 40006"     # royalty syetem
alias dp12-voxclub="ssh root@144.76.113.35 -p 40007"     # voxclub lxc
alias dp12-development="ssh root@144.76.113.35 -p 40008" # development lxc
alias dp12-dp12db="ssh root@144.76.113.35 -p 400012"     # TEST Diet Base
alias dp12-dp12be="ssh root@144.76.113.35 -p 40013"      # TEST Diet Backend

alias dp14="ssh root@138.68.99.190"  	  # DigitalOcean - OpenVPN Server
alias vscale="ssh root@77.244.215.231"    # Selectel - Vscale ABP RU

# BOOKA Servers
alias bookaprod="ssh root@78.47.118.204"   # Booka prod server
alias bookadevsite="ssh root@88.99.35.192" # Booka dev server
alias booka02="ssh root@51.89.153.28" 	   # Booka new prod server

# Other APB's and BOOKA's servers
alias mailcow="ssh root@116.203.131.225"   # DigitalOcean - MailCow MailServer
alias monit="ssh root@95.216.217.49" 		# Hetzner - monitoring and other tasks
alias monit-kd="ssh kd@95.216.217.49" 		# Hetzner - KD monit user
alias pint="ssh root@34.244.96.67" 		# Evil chinese thing
alias telebot="ssh root@95.217.179.165"		# server for telegram bot

# ABP Script Parsing Server
alias script="ssh root@84.38.183.37"
alias p01="ssh root@84.38.183.37 -p 4001"
alias p02="ssh root@84.38.183.37 -p 4002"
alias p03="ssh root@84.38.183.37 -p 4003"
alias p04="ssh root@84.38.183.37 -p 4004"
alias p05="ssh root@84.38.183.37 -p 4005"

alias c="clear"
alias p="ping"
alias h="host"

# Scripts for ssl - ABP Publishing
export PATH=$PATH:~/ABP\ Files/scriptslib-master/bin/


# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# green on success, red on failure; '#' if root, '$' otherwise
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=' %F{%(?.76.196)}%(#.#.$)%f '
#  source /Users/kd/temp/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/kd/.oh-my-zsh/added_by_user/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
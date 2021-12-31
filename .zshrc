# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/wwwennie/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# added by Anaconda3 installer
export PATH="/home/wwwennie/anaconda3/bin:$PATH"

# added for ase installer
export PATH="/usr/lib/python3/dist-packages/ase/:$PATH"
export PYTHONPATH="/usr/bin/ase:$PYTHONPATH" 

# added for ase-espresso
export PYTHONPATH="/home/wwwennie/ase-espresso/lib/python3.6/site-packages:$PYTHONPATH"

# for exec relating to UChicago research
export PATH="/home/wwwennie/wwwennie@uchicago.edu/bin/:$PATH"
export PATH="/home/wwwennie/wwwennie@uchicago.edu/bin/struct/:$PATH"
export PATH="/home/wwwennie/wwwennie@uchicago.edu/bin/QEscripts/:$PATH"
export PATH="/home/wwwennie/wwwennie@uchicago.edu/bin/plot/:$PATH"

export PYTHONPATH="/home/wwwennie/wwwennie@uchicago.edu/bin/:$PYTHONPATH"
export PYTHONPATH="/home/wwwennie/wwwennie@uchicago.edu/bin/struct/:$PYTHONPATH"
export PYTHONPATH="/home/wwwennie/wwwennie@uchicago.edu/bin/QEscripts/:$PYTHONPATH"
export PYTHONPATH="/home/wwwennie/wwwennie@uchicago.edu/bin/plot/:$PYTHONPATH"

### wwwennie
alias ucsb="cd ~/wwwennie@gmail.com/UCSB"
alias wo3="cd ~/wwwennie@gmail.com/UCSB/Research/Projects/WO3/"
alias pec="cd ~/wwwennie@uchicago.edu/UChicago/Research/pec/"
alias neuro="cd ~/wwwennie@uchicago.edu/UChicago/Research/Neuromorphic/"
alias notes="cd ~/wwwennie@uchicago.edu/UChicago/1-LabNotebook/"
alias uch="cd ~/wwwennie@uchicago.edu/UChicago/"

# python environments
alias py36="source activate py36"
alias nopy36="source deactiviate"

# DoD computational resources
alias sshthunder="/usr/local/ossh/bin/ssh wwwennie@thunder.afrl.hpc.mil"
alias sshlightning="/usr/local/ossh/bin/ssh wwwennie@lightning.afrl.hpc.mil"

# CNSI
alias sshguild="ssh -X wwwennie@guild.cnsi.ucsb.edu"
alias sshcori="ssh -X wwwennie@cori.nersc.gov"
alias vesta="~/VESTA-gtk3/VESTA &"
alias airtame=". /home/wwwennie/airtame-application-3.2.2/launch-airtame.sh"
alias xcrys="/home/wwwennie/xcrysden-1.5.60-bin-shared/xcrysden &"

# DoD computational resources
alias sshthunder="/usr/local/ossh/bin/ssh wwwennie@thunder.afrl.hpc.mil"
alias sshlightning="/usr/local/ossh/bin/ssh wwwennie@lightning.afrl.hpc.mil"

# CNSI
alias sshguild="ssh -X wwwennie@guild.cnsi.ucsb.edu"
alias sshcori="ssh -X wwwennie@cori.nersc.gov"

# Midway clusters
alias sshmw1="ssh -X wwwennie@midway1.rcc.uchicago.edu"
alias sshmw2="ssh -X wwwennie@midway2.rcc.uchicago.edu"

# ALCF clustrs
alias sshmira="ssh -X wwwennie@mira.alcf.anl.gov"
alias sshcetus="ssh -X wwwennie@cetus.alcf.anl.gov"

# get ip address
ipaddr() { (awk '{print $2}' <(ip a show | grep 'inet ')); }

# mounting midway to local machine
alias mw="sudo sshfs -o  allow_other -o IdentityFile=~/.ssh/id_rsa wwwennie@midway1.rcc.uchicago.edu:/home/wwwennie/scratch-midway2/ /home/wwwennie/midway1"
alias umw="sudo umount /home/wwwennie/midway1/"

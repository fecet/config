# TMUX
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
if [[ -d "/usr/share/oh-my-zsh" ]]; then
    export ZSH=/usr/share/oh-my-zsh
  else
    export ZSH=$HOME/.oh-my-zsh
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
# [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        svn
        mvn
        archlinux
        docker
        wd
        z
        history
        extract
        vi-mode
        fzf
        )

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=zh_CN.UTF-8
export LANG=en_US.UTF-8

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
alias clr='clear'
alias nv='nvim'
alias kc='kubectl'
# alias mk='minikube --registry-mirror=https://registry.docker-cn.com'
alias mks='minikube start --docker-env HTTP_PROXY=http://192.168.31.13:8118 --docker-env HTTPS_PROXY=http://192.168.31.13:8118 --docker-env NO_PROXY=localhost,127.0.0.1,localaddress,.localdomain.com,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24,192.168.49.2/24'
alias mk='minikube'
alias ll='ls -lah'
alias la='ls -a'
alias pc='proxychains'
alias py='python'
alias rr='ranger'
alias lg='lazygit'
# alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias sudo='sudo env HOME=$HOME '
alias natapp='natapp -config=$HOME/.config/natapp/config'
bindkey '^ ' autosuggest-accept
export DISPLAY=:0
export GOPATH=$HOME/project/dev.d/go
if type go &> /dev/null; then
    # enable go module
    go env -w GO111MODULE=on
    # go proxy
    go env -w GOPROXY=https://goproxy.cn,direct
fi
#export GOPROXY=https://mirrors.aliyun.com/goproxy/,direct
PATH=$PATH:$HOME/.local/bin/:$GOPATH/bin
# source ~/.oh-my-zsh/plugins/incr/incr*.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
# java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export LUA_PATH="~/.config/nvim/lua/;;"
export GITLAB_HOME="$HOME/project/gitlab"
# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
# tmux params
export TERM='xterm-256color'
export EDITOR='nvim'
export BAT_THEME='OneHalfDark'
export DOWNGRADE_FROM_ALA=1
export MUTTER_ALLOW_HYBRID_GPUS=1
# export QT_STYLE_OVERRIDE=nordic
export QT_QPA_PLATFORMTHEME=qgnomeplatform
export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
# export FZF_BASE=/usr/lib/fzf
# export DISABLE_FZF_KEY_BINDINGS=false
# export DISABLE_FZF_AUTO_COMPLETION=false

#export TERM='st-256color'
# proxy
# export HTTP_PROXY=http://127.0.0.1:8118
# export HTTPS_PROXY=$HTTP_PROXY
# export NO_PROXY=localhost,127.0.0.1,localaddress,.localdomain.com,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24,192.168.49.2/24
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
if type bat &> /dev/null; then
    export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'
fi
#refer rg over ag
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --smart-case --hidden'
fi
if type fuck &> /dev/null; then
    eval $(thefuck --alias)
fi
PROXY_ENV=(http_proxy ftp_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY ALL_PROXY)
NO_PROXY_ENV=(no_proxy NO_PROXY)
proxy_value=http://127.0.0.1:8118
no_proxy_value=localhost,127.0.0.1,localaddress,.localdomain.com,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24,192.168.49.2/24

proxyIsSet(){
    for envar in $PROXY_ENV
    do
        eval temp=$(echo \$$envar)
        if [ $temp ]; then
            return 0
        fi
    done
    return 1

}

assignProxy(){
    for envar in $PROXY_ENV
    do
       export $envar=$1
    done
    for envar in $NO_PROXY_ENV
    do
       export $envar=$2
    done
    echo "set all proxy env successfull"
    echo "proxy value is:"
    echo ${proxy_value}
    echo "no proxy value is:"
    echo ${no_proxy_value}
}

clrProxy(){
    for envar in $PROXY_ENV
    do
        unset $envar
    done
    echo "cleaned all proxy env"
}

toggleProxy(){
    if proxyIsSet 
    then
        clrProxy
    else
        # user=YourUserName
        # read -p "Password: " -s pass &&  echo -e " "
        # proxy_value="http://$user:$pass@ProxyServerAddress:Port"
        assignProxy $proxy_value $no_proxy_value
    fi
}

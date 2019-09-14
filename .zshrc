# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$HOME/.config/composer/vendor/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/username/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
 ZSH_THEME="powerlevel9k/powerlevel9k"
 POWERLEVEL9K_MODE="awesome-fontconfig"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
 git
 zsh-autosuggestions
 npm
 zsh-syntax-highlighting
 zsh-completions
)

autoload -U compinit && compinit

# Path on-my-zsh configuration
source $ZSH/oh-my-zsh.sh

#theme terminal

#left segment
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_ubuntu
  dir_writable 
  context
  dir 
  vcs 
  newline status
)

#right segment
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
   battery 
   laravel_version
   php_version
   todo 
 )


POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_BACKGROUND="clear"
POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf071"

POWERLEVEL9K_PROMPT_ADD_NEWLINE=false


# Add the icon prompt segment
POWERLEVEL9K_CUSTOM_UBUNTU="echo -n $'\uf17c'"
POWERLEVEL9K_CUSTOM_UBUNTU_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_UBUNTU_BACKGROUND="white"

# Add the custom yourName prompt segment
POWERLEVEL9K_CUSTOM_QBIT="echo -n $'armcm'"
POWERLEVEL9K_CUSTOM_QBIT_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_QBIT_BACKGROUND="cyan"
POWERLEVEL9K_MODE='nerdfont-complete'


# js prompt WIP - how to change automatically?
POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

#python prompt WIP - how to change automatically?
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"

#ruby prompt WIP - how to change automatically?
POWERLEVEL9K_CUSTOM_RUBY="echo -n '\ue21e' Ruby"
POWERLEVEL9K_CUSTOM_RUBY_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_RUBY_BACKGROUND="red"

source  ~/powerlevel9k/powerlevel9k.zsh-theme

source ~/.local/share/fonts/*.sh

# colorls plugin alias
alias ld='colorls -1'
alias ls='colorls --sort-dirs'
alias lo='colorls -a'
alias lst='colorls --tree'

# nickname
clear
figlet -f slant "JohnDoe"

# alias phpunit
alias phpunit='vendor/bin/phpunit'
alias phpf='vendor/bin/phpunit --filter'

# load ~/.aliases
for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

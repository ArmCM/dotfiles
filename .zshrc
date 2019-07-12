# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
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
)

source $ZSH/oh-my-zsh.sh

# User configuration
#theme

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_medium custom_freecodecamp dir vcs php_version newline status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false


# Add the custom Medium M icon prompt segment
POWERLEVEL9K_CUSTOM_MEDIUM="echo -n $'\uf17c'"
POWERLEVEL9K_CUSTOM_MEDIUM_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_MEDIUM_BACKGROUND="white"

# Add the custom yourName prompt segment
POWERLEVEL9K_CUSTOM_FREECODECAMP="echo -n $'\uf120' ArmCM"
POWERLEVEL9K_CUSTOM_FREECODECAMP_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_FREECODECAMP_BACKGROUND="cyan"
POWERLEVEL9K_MODE='nerdfont-complete'


#right segment
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery laravel_version todo dir_writable)

#js prompt
POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

#python prompt
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"

#ruby prompt
POWERLEVEL9K_CUSTOM_RUBY="echo -n '\ue21e' Ruby"
POWERLEVEL9K_CUSTOM_RUBY_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_RUBY_BACKGROUND="red"

source  ~/powerlevel9k/powerlevel9k.zsh-theme

source ~/.local/share/fonts/*.sh

#colorls alias
alias ld='colorls -1'
alias ls='colorls --sort-dirs'
alias lo='colorls -a'
alias lst='colorls --tree'

clear
figlet -f slant "ArmCM"

alias phpunit='vendor/bin/phpunit'
alias phpf='vendor/bin/phpunit --filter'

# load ~/.aliases
for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

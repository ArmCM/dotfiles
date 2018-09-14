# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/armando/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

#theme

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_medium custom_freecodecamp dir vcs newline status
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

source  ~/powerlevel9k/powerlevel9k.zsh-theme

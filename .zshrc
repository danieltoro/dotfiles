export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

# SPACESHIP THEME CONFIGURATIONS
source ~/dotfiles/.spaceship



# # SPACESHIP_PROMPT_ORDER=(
# #   time          # Time stamps section
# #   user          # Username section
# #   dir           # Current directory section
# #   host          # Hostname section
# #   git           # Git section (git_branch + git_status)
# #   hg            # Mercurial section (hg_branch  + hg_status)
# #   package       # Package version
# #   node          # Node.js section
# #   ruby          # Ruby section
# #   elixir        # Elixir section
# #   xcode         # Xcode section
# #   swift         # Swift section
# #   golang        # Go section
# #   php           # PHP section
# #   rust          # Rust section
# #   haskell       # Haskell Stack section
# #   julia         # Julia section
# #   docker        # Docker section
# #   aws           # Amazon Web Services section
# #   venv          # virtualenv section
# #   conda         # conda virtualenv section
# #   pyenv         # Pyenv section
# #   dotnet        # .NET section
# #   ember         # Ember.js section
# #   kubecontext   # Kubectl context section
# #   terraform     # Terraform workspace section
# #   exec_time     # Execution time
# #   line_sep      # Line break
# #   battery       # Battery level and status
# #   vi_mode       # Vi-mode indicator
# #   jobs          # Background jobs indicator
# #   exit_code     # Exit code section
# #   char          # Prompt character
# # )

# # SPACESHIP_CHAR_SYMBOL="\uF415"
# # SPACESHIP_CHAR_PREFIX="\uf296"
# SPACESHIP_CHAR_SUFFIX=(" ")
# SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
# SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
# # SPACESHIP_USER_SHOW="true"


# # SPACESHIP THEME

# # Prompt
# SPACESHIP_PROMPT_ADD_NEWLINE="true"
# SPACESHIP_PROMPT_SEPARATE_LINE="true"
# SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="false"
# SPACESHIP_PROMPT_PREFIXES_SHOW="true"
# SPACESHIP_PROMPT_SUFFIXES_SHOW="true"
# SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER "
# SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

# # Package version (package)
# SPACESHIP_PACKAGE_SHOW="true"
# SPACESHIP_PACKAGE_PREFIX=" "
# SPACESHIP_PACKAGE_SUFFIX=" "
# SPACESHIP_PACKAGE_SYMBOL="📦 "
# SPACESHIP_PACKAGE_COLOR="red"

# alias ls='colorls — light — sort-dirs — report'
# alias lc='colorls — tree — light'

# POWERLEVEL9K_MODE="nerdfont-complete"
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator ram node_version)
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_USER_ICON="\uF415" # 
#POWERLEVEL9K_ROOT_ICON="\uF09C"
#POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
#POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '

ZSH_DISABLE_COMPFIX=true

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  iterm2
  macports
  man
  osx
  python
  composer
  zsh-syntax-highlighting
  zsh-autosuggestions
)


source $ZSH/oh-my-zsh.sh

alias suroot='sudo -E -s'

# source ~/.bash_profile

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile;
fi

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/python@2/bin:$PATH"
export EDITOR="/usr/local/Cellar/micro/1.3.3/bin/micro"

# Aliases
alias ll="ls -FGlAhp"
cd() { builtin cd "$@"; ls; }
alias cd..="cd ../"
alias ~="cd ~"
alias c="clear"
trash () { command mv "$@" ~/.Trash; }
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias work="cd ~/Workspace"
alias tmp="cd ~/Tmp"

# Functions
gif_opt () {
	mkdir min;
	for f in *.gif; do
		gifsicle --resize-fit-width $1 -i "$f" > "min/${f%.gif}.gif"
	done;
}

# Disable sharing history in iTerm2
unsetopt inc_append_history
unsetopt share_history

# Configure Z
source /usr/local/etc/profile.d/z.sh

# Configure sdkman
export SDKMAN_DIR=$HOME/.sdkman
[[ -s $HOME/.sdkman/bin/sdkman-init.sh ]] && source $HOME/.sdkman/bin/sdkman-init.sh

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source webstorm
alias webstorm="~/webstorm"

source ~/.private-profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/danieltoro/.rvm/scripts/rvm

# Android Studio path's
export ANDROID_HOME=/Users/danieltoro/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
# Set alias to shorten command to run emulator
alias run-emu="$ANDROID_HOME/tools/emulator @pixel2"



export PATH=~/.npm-global/bin:$PATH

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion




# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#!/bin/bash

# Install Hombrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# Install VSCode extensions
code --install-extension esbenp.prettier-vscode
code --install-extension octref.vetur
code --install-extension EditorConfig.editorconfig
code --install-extension christian-kohler.path-intellisense
code --install-extension dbaeumer.jshint
code --install-extension dbaeumer.vscode-eslint
code --install-extension Equinusocio.vsc-material-theme
code --install-extension foxundermoon.shell-format
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension mikestead.dotenv
code --install-extension PKief.material-icon-theme
code --install-extension whizkydee.material-palenight-theme

# Configure iTerm2 profile
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Create hushlogin
touch ~/.hushlogin

# Configure fzf and install keybidings
$(brew --prefix)/opt/fzf/install

# Install sdkman
curl -s "https://get.sdkman.io" | bash
source "/Users/danieltoro/.sdkman/bin/sdkman-init.sh"

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Configure profile
dir=~/dotfiles
files=".zshrc .gitconfig"

# Create a dir to move the configuration files there
cd $dir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    [ -e ~/$file ] && rm ~/$file
    ln -s $dir/$file ~/$file
done

# Change MacOS configuration
# source .macos

# Create private-profile
cd ~
touch .private-profile

# Change default shell
chsh -s /bin/zsh

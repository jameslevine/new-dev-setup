#!/bin/bash

fancy_echo() {
  local fmt="$1"
  shift

  # shellcheck disable=SC2059
  printf "\\n$fmt\\n" "$@"
}

green_tick() {
  echo -e \u2713
}

create_bash_profile() {
  if [ -r ~/.bash_profile ]; then
    echo "Bash Profile already created."
  else
    touch ~/.bash_profile
  fi
}

switch_to_bash() {
  if ! ps -p $$ &>/dev/null; then
    fancy_echo "Switching to Bash..."
    chsh -s /bin/bash
    fancy_echo "Bash is now installed"
    create_bash_profile
  else
    fancy_echo "You already have Bash installed...good job!"
  fi
}

# Homebrew installation
install_brew() {
  sudo xcode-select --install
  if ! command -v brew &>/dev/null; then
    fancy_echo "Installing Homebrew, an OSX package manager, follow the instructions..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.bash_profile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    if ! grep -qs "recommended by brew doctor" ~/.bash_profile; then
      fancy_echo "Put Homebrew location earlier in PATH ..."
      printf '\n# recommended by brew doctor\n' >>~/.bash_profile
      printf 'export PATH="/usr/local/bin:$PATH"\n' >>~/.bash_profile
      export PATH="/usr/local/bin:$PATH"
      fancy_echo "Homebrew is now installed...good job!"
    fi
  else
    fancy_echo "You already have Homebrew installed...good job!"
  fi
}

switch_to_bash
install_brew
green_tick

bash_completion_setup() {
  echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >>~/.bash_profile
  source ~/.bash_profile
}

git_setup() {
  echo "Git version is:" git --version
  git config --global user.name "James Levine"
  # git config --global user.email "your_email@youremail.com"
  git config --global credential.helper osxkeychain
}

# # Installation dependencies and settings
brew tap "homebrew/bundle"
brew tap "homebrew/cask"
brew tap "homebrew/cask-fonts"
brew tap "homebrew/core"
brew tap "homebrew/services"

# Programming Languages
brew install node
brew install go

# CLI Tools
brew install git
git_setup
brew install curl
brew install terraform
brew install awscli
brew install bash-completion
bash_completion_setup
brew install python

# Mac Applications
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask whatsapp
brew install --cask android-studio
brew install --cask spotify
brew install --cask postman
brew install --cask ngrok
brew install --cask virtualbox
brew install --cask docker

# Mac Applications Software
brew install mas

# Mac Applications
mas install 497799835 # Xcode
# mas "Magnet", id:441258766
mas install 803453959 # Slack

# Fonts
brew install --cask "font-ibm-plex"

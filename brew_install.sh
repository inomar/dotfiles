#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all

formulas=(
    ab
    amazon-ecs-cli
    ansible
    apr
    apr-util
    autoconf
    aws-elasticbeanstalk
    awscli
    bash-completion
    chromedriver
    cask
    cmake
    colordiff
    curl
    docker
    docker-machine
    fish
    freetype
    gcc
    gdbm
    geckodriver
    gettext
    ghq
    gibo
    git
    gmp
    go
    hugo
    icu4c
    imagemagick@6
    isl
    jenkins
    jmeter
    jpeg
    jq
    libidn2
    libmpc
    libpng
    libtiff
    libtool
    libunistring
    libyaml
    lua
    mongodb
    mpfr
    mtr
    mysql
    nginx
    nkf
    oniguruma
    openssl
    peco
    perl
    pkg-config
    pyenv
    pyenv-virtualenv
    python
    python@2
    rbenv
    readline
    redis
    "ricty --vim-powerline"
    ruby
    ruby-build
    sdl
    sl
    sqlite
    tree
    typescript
    "vim --with-lua"
    wget
    xz
    yarn
    z
    zsh
)

"brew tap..."

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    alfred
    atom
    bettertouchtool
    evernote
    dash
    docker-toolbox
    dropbox
    firefox
    franz
    google-chrome
    google-japanese-ime
    hyper
    inkdrop
    iterm2
    java
    kindle
    mamp
    openemu
    openoffice
    rubymine
    sequel-pro
    sketch
    skitch
    slack
    the-unarchiver
    vagrant
    vagrant-manager
    virtualbox
    visual-studio-code
    vlc
    xquartz-beta
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END


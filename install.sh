#!/usr/bin/env bash

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  coreutils \
  gh \
  htop \
  hyperfine \
  jq \
  lazygit \
  protobuf \
  ripgrep \
  rustup \
  thefuck \
  tokei

# install rust
rustup default stable

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm i 22
nvm alias default 22

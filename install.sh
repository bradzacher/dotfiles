#!/usr/bin/env bash

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  coreutils \
  difftastic \
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

# install rust and rust deps
rustup default stable
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash # binstall for installing cargo tools from source
curl -LsSf https://insta.rs/install.sh | sh            # insta for rust snapshots
cargo install --git https://github.com/oxalica/nil nil # nil LSP for nix
cargo binstall -y cargo-watch                          # watch for re-executing cargo commands on file change
cargo install cargo-instruments --locked               # instruments for profiling rust code

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm i 22
nvm alias default 22


# macos configs
defaults write -g ApplePressAndHoldEnabled -bool false                  # disable long press accent popover
defaults write com.apple.finder AppleShowAllFiles True; killall Finder  # show dotfiles by default

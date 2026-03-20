# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

# Basics
scoop install git
scoop bucket add extras
scoop install gow  # GNU on Windows
scoop install mise

# Programming Languages
mise ls-remote node
mise ls-remote deno
mise ls-remote python
mise ls-remote rust
mise ls-remote go
mise ls-remote java

# Tools
scoop install jetbrains-toolbox
python -m ensurepip --upgrade

# Visuals
scoop bucket add nerd-fonts
scoop install monaspace

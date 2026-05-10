# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

# Basics
scoop install git
scoop bucket add extras
scoop install gow  # GNU on Windows
scoop install mise
scoop install gpg

# Programming Languages
mise use --global node
mise use --global deno
mise use --global pnpm
mise use --global python
mise use --global rust # including cargo
mise use --global go
mise use --global java
mise use --global github:leanprover/lean4 # including lake

# Tools
scoop install jetbrains-toolbox
mise doctor

# Visuals
scoop bucket add nerd-fonts
scoop install monaspace

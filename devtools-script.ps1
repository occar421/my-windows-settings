# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

# Basics
scoop install git
scoop bucket add extras
scoop install sudo

####################
# Version Managers #
####################
scoop install mise

scoop install nvm # Node(JavaScript)

scoop install main/uv

scoop install rustup

scoop install go

#########
# Tools #
#########
nvm install lts
nvm use lts

scoop install yarn

scoop install deno

scoop install jetbrains-toolbox
scoop install gow

python -m ensurepip --upgrade

###########
# Visuals #
###########
scoop bucket add nerd-fonts
scoop install monaspace

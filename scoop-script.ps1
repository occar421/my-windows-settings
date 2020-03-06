# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

####################
# Version Managers #
####################
scoop install nvm # Node(JavaScript)
scoop install jabba # Java
# TODO Python
# TODO Ruby
# TODO Rust
# TODO Go

#########
# Tools #
#########
scoop install git
scoop install yarn
scoop install curl
scoop install docker
scoop install jetbrains-toolbox
scoop install sudo

###########
# Visuals #
###########
scoop bucket add nerd-fonts
sudo scoop install DejaVuSansMono-NF

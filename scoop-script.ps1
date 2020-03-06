# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

####################
# Version Managers #
####################
scoop install nvm # Node(JavaScript)
scoop install jabba # Java
# TODO Python
scoop install https://bitbucket.org/jonforums/uru/downloads/uru.json
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

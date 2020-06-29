# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

####################
# Version Managers #
####################
scoop install nvm # Node(JavaScript)
# TODO Python
# TODO Ruby
# TODO Rust
# TODO Go
# Jabba (Java)
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-Expression (
  Invoke-WebRequest https://github.com/shyiko/jabba/raw/master/install.ps1 -UseBasicParsing
).Content

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

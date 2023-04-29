# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

####################
# Version Managers #
####################
scoop install nvm # Node(JavaScript)
scoop install pyenv@2.64.11 # Python
scoop hold pyenv            # ref. https://github.com/ScoopInstaller/Main/issues/4143
# TODO Rust
scoop install go
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
scoop install deno
scoop install curl
scoop install docker
scoop install jetbrains-toolbox
scoop install sudo
scoop install gow
python -m ensurepip --upgrade

###########
# Visuals #
###########
scoop bucket add nerd-fonts
sudo scoop install firacode

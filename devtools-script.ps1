# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# Installation
iwr -useb get.scoop.sh | iex

# Basics
scoop install git
scoop bucket add extras
scoop install sudo

# Dev Drive
# Assuming X is Dev Drive
mkdir -p X:\packages\npm
sudo setx /M npm_config_cache X:\packages\npm
mkdir -p X:\packages\pip
sudo setx /M PIP_CACHE_DIR X:\packages\pip
mkdir -p X:\packages\cargo
sudo setx /M CARGO_HOME X:\packages\cargo
mkdir -p X:\packages\yarn
sudo setx /M YARN_CACHE_FOLDER X:\packages\yarn
mkdir -p X:\packages\deno
sudo setx /M DENO_DIR X:\packages\deno

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
  Invoke-WebRequest https://github.com/Jabba-Team/jabba/raw/main/install.ps1 -UseBasicParsing
).Content

#########
# Tools #
#########
nvm install lts
nvm use lts
scoop install yarn
scoop install deno
scoop install curl
scoop install docker
scoop install jetbrains-toolbox
scoop install gow
python -m ensurepip --upgrade

###########
# Visuals #
###########
scoop bucket add nerd-fonts
scoop install monaspace

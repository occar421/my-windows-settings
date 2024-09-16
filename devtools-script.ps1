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
scoop install nvm # Node(JavaScript)
scoop install pyenv

scoop install rustup
mkdir -p X:\packages\cargo
setx CARGO_HOME X:\packages\cargo

scoop install go
mkdir -p X:\packages\go
setx GOCACHE X:\packages\go

#########
# Tools #
#########
nvm install lts
nvm use lts
mkdir -p X:\packages\npm
setx npm_config_cache X:\packages\npm

scoop install yarn
mkdir -p X:\packages\yarn
setx YARN_CACHE_FOLDER X:\packages\yarn

scoop install deno
mkdir -p X:\packages\deno
setx DENO_DIR X:\packages\deno

scoop install jetbrains-toolbox
scoop install gow

python -m ensurepip --upgrade
mkdir -p X:\packages\pip
setx PIP_CACHE_DIR X:\packages\pip

###########
# Visuals #
###########
scoop bucket add nerd-fonts
scoop install monaspace

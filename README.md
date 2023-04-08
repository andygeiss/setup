# setup

build a minimal Go developer environment from scratch

## Get the sources

	git clone https://github.com/andygeiss/setup.git ; cd setup

## Install prerequisites

	cd apt-get ; ./install.sh ; cd -

## Build the base image

	cd images/base ; ./build.sh

## Add "vi" alias to use 

	cp .bash_aliases $HOME/
	source .bash_aliases
	
## Test the setup

	vi

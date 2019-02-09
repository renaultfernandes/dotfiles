#!/usr/bin/env bash

# Script to install and setup all setup all dotfiles
# Author: Renault Fernandes


# Directory where all the dotfiles from the repo are located
DOTFILES_DIR=~/dotfiles/homedir

# Directory where all the dotfiles have to installed (home by default)
INSTALL_DIR=$HOME

# Directory where existing dotfiles will backed up
BACKUP_DIR=~/old_dotfiles_backup


# Define Colors
C_BLUE="\033[0;34m"
C_GREEN="\033[0;32m"
C_END="\033[0m"


# Install all dotfiles into INSTALL_DIR by symlinking them
function install_dotfiles() {

    cd $DOTFILES_DIR

    for file in $(find . -type f -print); do

        # Cut the starting './' in each file path
        file=${file:2}

        # Create the sub-directory in the INSTALL_DIR if it doesn't exist
        mkdir -p $INSTALL_DIR/$(dirname $file)

        # Backup and remove the old dotfile if it already exists in INSTALL_DIR
        if [ -e $INSTALL_DIR/$file ] || [ -L $INSTALL_DIR/$file ]; then
            # Backup if the contents of existing file are different
            if ! diff -q $INSTALL_DIR/$file $file &> /dev/null ; then
                echo -e "${C_BLUE}Backing up existing $file${C_END}"
                mkdir -p $BACKUP_DIR/$(dirname $file)
                cp $INSTALL_DIR/$file $BACKUP_DIR/$(dirname $file)
            fi
            rm $INSTALL_DIR/$file
        fi

        # Install the dotfile by symlinking it
        echo -e "${C_GREEN}Installing $file${C_END}"
        ln -s $DOTFILES_DIR/$file $INSTALL_DIR/$file

    done
}

install_dotfiles

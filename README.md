Repository used to store my personal dotfiles and configuration. I pieced this together from various online tutorials. 

Usage:

1. Clone the repo into your home directory.
2. Run bootstrap.sh. All existing dotfiles files in your home directory will be copied to dotfiles__old. Symlinks will then be created for the new files.
3. To add additional dotfiles create them in the dotfiles directory then add them to the the list of files in bootstrap.sh.
4. The osx file is also a bash script that needs to be run one time. I have excluded it from the bootstrap.sh file for now but may add it in later. For now you will need to run it separately.

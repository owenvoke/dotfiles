# --------------------------------------------------------------------------------------------------
# Remove old files
# --------------------------------------------------------------------------------------------------

rm -rf \
  $HOME/.gitconfig \
  $HOME/.gitignore \
  $HOME/.zprofile \
  $HOME/.gnupg/gpg.conf
  
# --------------------------------------------------------------------------------------------------
# Symlinks
# --------------------------------------------------------------------------------------------------

# Git Files
ln -s $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/git/gitignore $HOME/.gitignore

# ZSH Files
ln -s $DOTFILES/zsh/zprofile $HOME/.zprofile

# GPG Files
mkdir $HOME/.gnupg
ln -s $DOTFILES/gnupg/gpg.conf $HOME/.gnupg/gpg.conf
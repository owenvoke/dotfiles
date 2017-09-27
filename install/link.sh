# --------------------------------------------------------------------------------------------------
# Remove old files
# --------------------------------------------------------------------------------------------------

echo "Removing old dotfiles"
rm -rf \
  $HOME/.gitconfig \
  $HOME/.gitignore \
  $HOME/.zprofile \
  $HOME/.gnupg/gpg.conf
  
# --------------------------------------------------------------------------------------------------
# Symlinks
# --------------------------------------------------------------------------------------------------

echo "Linking new dotfiles"

# Git Files
ln -s $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/git/gitignore $HOME/.gitignore

# ZSH Files
ln -s $DOTFILES/zsh/zprofile $HOME/.zprofile

# GPG Files
mkdir $HOME/.gnupg
ln -s $DOTFILES/gnupg/gpg.conf $HOME/.gnupg/gpg.conf
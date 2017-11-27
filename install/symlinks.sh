# --------------------------------------------------------------------------------------------------
# Remove old files
# --------------------------------------------------------------------------------------------------

echo "Removing old dotfiles"
rm -rf \
  $HOME/.gitconfig \
  $HOME/.gitconfig-work \
  $HOME/.gitignore_global \
  $HOME/.zprofile \
  $HOME/.zshrc \
  $HOME/.gnupg/gpg.conf
  
# --------------------------------------------------------------------------------------------------
# Symlinks
# --------------------------------------------------------------------------------------------------

echo "Linking new dotfiles"

# Git Files
ln -s $DOTFILES/git/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/git/gitconfig-work $HOME/.gitconfig-work
ln -s $DOTFILES/git/gitignore $HOME/.gitignore_global

# ZSH Files
ln -s $DOTFILES/zsh/zprofile $HOME/.zprofile
ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc

# GPG Files
if [ ! -d $HOME/.gnupg ]; then
    mkdir $HOME/.gnupg
fi
ln -s $DOTFILES/gnupg/gpg.conf $HOME/.gnupg/gpg.conf
chmod 700 $HOME/.gnupg


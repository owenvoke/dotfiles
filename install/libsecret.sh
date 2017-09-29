# Install
sudo apt-get install libsecret-1-0 libsecret-1-dev

# Make credential-manager
sudo make -C /usr/share/doc/git/contrib/credential/libsecret

# Copy to /usr/bin
sudo cp /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret /usr/bin/git-credential-libsecret

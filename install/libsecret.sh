# Install
sudo apt-get install libsecret-1-0 libsecret-1-dev

# Make credential-manager
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make

# Copy to /usr/bin
sudo cp /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret /usr/bin/git-credential-libsecret

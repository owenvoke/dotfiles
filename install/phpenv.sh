# Install phpenv
if [ -d $HOME/.phpenv ]; then
    git -C $HOME/.phpenv pull
else
    git clone https://github.com/phpenv/phpenv.git $HOME/.phpenv
fi


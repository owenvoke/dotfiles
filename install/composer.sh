echo "Installing Composer"

# Check the validity of the installer
EXPECTED_SIGNATURE=$(curl -sS https://composer.github.io/installer.sig)
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]; then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    exit 1
fi

# Run the installer
php composer-setup.php --quiet
rm composer-setup.php

# Move to /usr/bin
sudo mv composer.phar /usr/bin/composer

# Install Composer dependencies
/usr/bin/composer global require squizlabs/php_codesniffer
if [ -d "$HOME/.composer/vendor/bin" ]; then
    $HOME/.composer/vendor/bin/phpcs --config-set default_standard PSR2
elif [ -d "$HOME/.config/composer/bin" ]; then
    $HOME/.config/composer/vendor/bin/phpcs --config-set default_standard PSR2
fi

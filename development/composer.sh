EXPECTED_SIGNATURE=$(php -r "echo file_get_contents('https://composer.github.io/installer.sig');")
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

echo $ACTUAL_SIGNATURE
echo $EXPECTED_SIGNATURE
if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    exit 1
fi

php composer-setup.php --quiet
RESULT=$?
rm composer-setup.php
mv composer.phar /usr/bin/composer
exit $RESULT
#!/bin/bash




sudo mv COLOHcrm /var/www/html/

sleep 5
APACHEUSER='www-data:www-data'
SUGARPATH='/var/www/html/COLOHcrm/'

sudo find -P $SUGARPATH/ -type d -exec chmod 755 {} \;
sudo find -P $SUGARPATH/ -type f -exec chmod 644 {} \;
sudo find -P $SUGARPATH/ -name *.js -exec chmod 755 {} \;

sudo chmod 664 $SUGARPATH/config.php
sudo chmod 664 $SUGARPATH/config_override.php
sudo chmod 664 $SUGARPATH/sugarcrm.log

sudo find -P $SUGARPATH/cache -type d -exec chmod 775 {} \;
sudo find -P $SUGARPATH/custom -type d -exec chmod 775 {} \;
sudo find -P $SUGARPATH/data -type d -exec chmod 775 {} \;
sudo find -P $SUGARPATH/modules -type d -exec chmod 775 {} \;
sudo find -P $SUGARPATH/include -type d -exec chmod 775 {} \;
sudo find -P $SUGARPATH/upload -type d -exec chmod 775 {} \;

sudo find -P $SUGARPATH/cache -type f -exec chmod 664 {} \;
sudo find -P $SUGARPATH/custom -type f -exec chmod 664 {} \;
sudo find -P $SUGARPATH/data -type f -exec chmod 664 {} \;
sudo find -P $SUGARPATH/modules -type f -exec chmod 664 {} \;
sudo find -P $SUGARPATH/include -type f -exec chmod 664 {} \;
sudo find -P $SUGARPATH/upload -type f -exec chmod 664 {} \;

sudo chown -R $APACHEUSER $SUGARPATH
exit
exit


#!/bin/bash

/var/www/brat/brat-v1.3_Crunchy_Frog/install.sh <<EOD 
$BRAT_USERNAME 
$BRAT_PASSWORD 
$BRAT_EMAIL
EOD
mv /var/www/brat/brat-v1.3_Crunchy_Frog/config.py /var/www/brat/brat-v1.3_Crunchy_Frog/config.py.old
mv /var/www/brat/brat-v1.3_Crunchy_Frog/annotation.conf /var/www/brat/brat-v1.3_Crunchy_Frog/annotation.conf.old
mv /var/www/brat/brat-v1.3_Crunchy_Frog/kb_shortcuts.conf /var/www/brat/brat-v1.3_Crunchy_Frog/kb_shortcuts.conf.old
mv /var/www/brat/brat-v1.3_Crunchy_Frog/tools.conf /var/www/brat/brat-v1.3_Crunchy_Frog/tools.conf.old
mv /var/www/brat/brat-v1.3_Crunchy_Frog/visual.conf /var/www/brat/brat-v1.3_Crunchy_Frog/visual.conf.old
cp /bratconfig/config.py /var/www/brat/brat-v1.3_Crunchy_Frog/config.py
cp /bratconfig/annotation.conf /var/www/brat/brat-v1.3_Crunchy_Frog/annotation.conf
cp /bratconfig/kb_shortcuts.conf /var/www/brat/brat-v1.3_Crunchy_Frog/kb_shortcuts.conf
cp /bratconfig/tools.conf /var/www/brat/brat-v1.3_Crunchy_Frog/tools.conf
cp /bratconfig/visual.conf /var/www/brat/brat-v1.3_Crunchy_Frog/visual.conf
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/config.py
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/annotation.conf
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/kb_shortcuts.conf
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/tools.conf
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/visual.conf
exit 0

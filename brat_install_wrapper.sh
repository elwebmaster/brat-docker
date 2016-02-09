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

for file in config.py annotation.conf kb_shortcuts.conf tools.conf visual.conf
do
  if [[ ! -f $file ]]
  then
    cp /var/www/brat/brat-v1.3_Crunchy_Frog/$file.old /bratconfig/$file
  fi
  
  ln -s /bratconfig/$file /var/www/brat/brat-v1.3_Crunchy_Frog/$file
done

chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/config.py
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/annotation.conf
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/kb_shortcuts.conf
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/tools.conf
chown www-data:www-data /var/www/brat/brat-v1.3_Crunchy_Frog/visual.conf
exit 0

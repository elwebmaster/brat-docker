http://brat.nlplab.org/

BRAT requires you to configure usernames and passwords. You can specify these as environment variables when you run the container.

You will also need to provide data and config files. The folloowing config files should be in /directory/on/host/bratconfig :
config.py
annotation.conf
kb_shortcuts.conf
tools.conf
visual.conf

On the host:

chmod 777 /directory/on/host/bratconfig
chmod 777 /directory/on/host/bratdata

Then run something like:

  docker run -d -p 80:80 -v /directory/on/host:/bratconfig -v /directory/on/host:/bratdata -e BRAT_USERNAME=brat -e BRAT_PASSWORD=brat -e BRAT_EMAIL=brat@example.com  stefand/brat
  
The environmental variables (BRAT_USERNAME=brat, BRAT_PASSWORD=brat, BRAT_EMAIL=brat@example.com) are NOT used, instead the config.py file from /bratconfig is used.





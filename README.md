Dockerized [brat](http://brat.nlplab.org/).

### Installation

Installation command:

```
docker run -d -p 80:80 -v /directory/on/host:/bratconfig -v /directory/on/host:/bratdata -e BRAT_USERNAME=brat -e BRAT_PASSWORD=brat -e BRAT_EMAIL=brat@example.com [--name Container Name] stefand/brat-docker
```

The `-v` option specifies directory mounts for the data and config folders (which must have rwx persmissions on the host for the Docker user). The data folder will contain the annotation files and the config folder should contain the following:
* config.py  
* annotation.conf  
* kb_shortcuts.conf  
* tools.conf  
* visual.conf  

The environmental variables `BRAT_USERNAME=brat`, `BRAT_PASSWORD=brat`, and `BRAT_EMAIL=brat@example.com` are NOT used, and instead, the config.py file from `/brat-config` is used.





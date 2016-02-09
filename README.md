Dockerized [brat](http://brat.nlplab.org/).

### Installation

Installation command:

```
docker run -d -p 80:80 -v /directory/on/host:/bratconfig -v /directory/on/host:/bratdata -e BRAT_USERNAME=brat -e BRAT_PASSWORD=brat -e BRAT_EMAIL=brat@example.com --name myContainer stefand/brat-docker
```

The `-p` specifies the port forwarding (The first number corresponds to the port number on the Docker instance and the second the port number on the host machine).

The `-v` option specifies directory mounts for the data and config folders (which must have rwx persmissions on the host for the Docker user). The data folder will contain the annotation files and the config folder should contain the following:
* config.py  
* annotation.conf  
* kb_shortcuts.conf  
* tools.conf  
* visual.conf  

The environmental variables `BRAT_USERNAME=brat`, `BRAT_PASSWORD=brat`, and `BRAT_EMAIL=brat@example.com` are NOT used, and instead, the corresponding variables set in the config.py file from `/bratconfig` are used.

The `--name` option is optional and if not specified, Docker auto-generates one.




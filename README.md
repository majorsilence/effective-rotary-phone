# effective-rotary-phone
Gohper server and protocol stuff

I find this amusing 🤣. 

# /pygopherd


Pygophered docker image.  Inspriation taken from:

* https://hub.docker.com/r/kalemeow/pygopherd which I believe is
    * https://github.com/kalemeow/pygopherd-docker
    * forked as 
        * https://github.com/majorsilence/pygopherd-docker
* https://github.com/michael-lazar/pygopherd


The purpose of this is to create an gopher server image based on the last ubuntu supported verison of pygopherd.  Perhaps once a newer version pygopherd is updated to python 3 and included in a modern ubuntu version I'll switch to that.

## Usage

Run the container as follows:

```
docker run --name pygopherd \
	-p 70:70 \
	-e PYGOPHERD_HOSTNAME="Whatever Your Hosts Hostname is" \
	-v /var/www/gopher:/opt/gopher \
	-d majorsilence/pygopherd
```

Update __/var/www/gopher__ path to whatever path you are storing your gopher files and the __PYGOPHERD_HOSTNAME__ to your hosts hostname.

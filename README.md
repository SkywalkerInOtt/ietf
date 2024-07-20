# ietf author tool with kdwatch in container
https://github.com/cabo/kdwatch

# Install podman
Download and install podman-desktop
https://podman-desktop.io/docs/installation/macos-install

Install and start podman from podman-desktop
Once podman is running, start a terminal to access podman CLI

# git clone or copy the Dockerfile

# build a container image
podman build . -t kdwatch

once build completes, check images
```
%podman images
REPOSITORY                TAG         IMAGE ID      CREATED         SIZE
localhost/kdwatch         latest      bc44dd077c39  1 minutes ago   1.12 GB
docker.io/library/ubuntu  latest      ffb64c9b7e8b  6 weeks ago     103 MB
```
Hint:
To remove an image
```
%podman rmi -f kdwatch
```

# run kdwatch image in your ietf draft folder
make sure only one mkd file in your folder

```
%podman run -it -p 7991:7991 -p 59225:59225 -v `pwd`:/var/mkd kdwatch
```

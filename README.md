# radiance-docker

A Dockerfile to build NREL/Radiance for use on Windows

## Getting started

- First, you'll need to install Docker if you haven't already:
  
  - [Download and install Docker Desktop](https://www.docker.com/products/docker-desktop)

- Make sure the `.bat` files in this repo are in your `PATH` variables 
  
  - `SET PATH=C:\Path\To\Your\Copy\of\this\Repo;%PATH%`
  
  - or permanently using the ["Edit the system environment variables"](https://www.techjunkie.com/environment-variables-windows-10/) control panel thingy by searching in the start menu

- For the following commands, I assume you're in the command shell (e.g. `cmd.exe`) 
  
  - `docker pull darenthomas/radiance`
  
  - (the above command downloads the image containing the Radiance build I made - the `.bat` files in this repository assume you have an image with the tag "darenthomas/radiance")

- 



## Building the docker image

You won't actually have to build this yourself, as I will be publishing the image to [Docker Hub](https://hub.docker.com/). So this is more of a reminder to myself

```
docker build -t darenthomas/radiance .
```





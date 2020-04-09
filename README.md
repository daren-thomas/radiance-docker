# radiance-docker

A Dockerfile to build NREL/Radiance for use on Windows

## Why

It turns out, building Radiance on Windows is not really straightforward. Unless you have Cygwin. And know how to compile programs. And can stomache a bunch of error messages. And have the whole compilation toolchain all set up etc. I think I might be able to get this going, but I needed a quick solution for a friend and I believe this is it.

The commands I'm interested in providing are these two in particular:

- `pabopto2bdsf`

- `bsdf2klems`

As they are not provided by the standard Windows install of Radiance - use that for the rest of the commands.

## Getting started

- First, you'll need to install Docker if you haven't already:
  
  - [Download and install Docker Desktop](https://www.docker.com/products/docker-desktop)

- Make sure the `radiance.cmd` file in this repo are in your `PATH` variables 
  
  - `SET PATH=C:\Path\To\Your\Copy\of\this\Repo;%PATH%`
  
  - or permanently using the ["Edit the system environment variables"](https://www.techjunkie.com/environment-variables-windows-10/) control panel thingy by searching in the start menu
  
  - (the `docker` command should also be in your PATH)

- Make sure Docker can mount your current working directory
  
  - see hints here: [Mounting Host Directories](https://rominirani.com/docker-on-windows-mounting-host-directories-d96f3f056a2c)
  
  - ![What it looked like on my PC](docs/allow-mounting-c-drive.png)

- For the following commands, I assume you're in the command shell (e.g. `cmd.exe`) 
  
  - `docker pull darenthomas/radiance`
  
  - (the above command downloads the image containing the Radiance build I made - the `.cmd` files in this repository assume you have an image with the tag "darenthomas/radiance")

- 

## Building the docker image

You won't actually have to build this yourself, as I will be publishing the image to [Docker Hub](https://hub.docker.com/). So this is more of a reminder to myself

```
docker build -t darenthomas/radiance .
```

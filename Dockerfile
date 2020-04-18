FROM ubuntu
COPY ./rmake /usr/local/bin/rmake
RUN chmod 755 /usr/local/bin/rmake

# where should I really put this?!
COPY ./WINDOW6BSDFt.xml /usr/local/bin/WINDOW6BSDFt.xml

# install a bunch of stuff
RUN apt-get update -y && apt-get -y install gcc git libgl1-mesa-glx csh build-essential libgl1-mesa-dev freeglut3-dev curl

# download the source for Radiance and compile it using the answers file
RUN git clone https://github.com/NREL/Radiance.git
WORKDIR /Radiance

# simplify the makeall command to be more unattended (we know exactly what we want here...)
# srcdirs=( common rt meta cv gen ot px hd util cal )
RUN mkdir src/lib
RUN cd src/common && /usr/local/bin/rmake -k install; exit 0
RUN cd src/rt && /usr/local/bin/rmake -k install; exit 0
RUN cd src/meta && /usr/local/bin/rmake -k install; exit 0
RUN cd src/cv && /usr/local/bin/rmake -k install; exit 0
RUN cd src/gen && /usr/local/bin/rmake -k install; exit 0
RUN cd src/ot && /usr/local/bin/rmake -k install; exit 0
RUN cd src/px && /usr/local/bin/rmake -k install; exit 0
RUN cd src/hd && /usr/local/bin/rmake -k install; exit 0
RUN cd src/util && /usr/local/bin/rmake -k install; exit 0
RUN cd src/cal && /usr/local/bin/rmake -k install; exit 0


ENV PATH "/usr/local/bin:/Radiance/src/util:$PATH"

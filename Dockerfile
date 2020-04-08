FROM ubuntu
COPY ./rmake /usr/local/bin/rmake
RUN chmod 755 /usr/local/bin/rmake

# install a bunch of stuff
RUN apt-get update -y && apt-get -y install gcc git libgl1-mesa-glx csh build-essential libgl1-mesa-dev freeglut3-dev

# download the source for Radiance and compile it using the answers file
RUN git clone https://github.com/NREL/Radiance.git
WORKDIR Radiance

# simplify the makeall command to be more unattended (we know exactly what we want here...)
# srcdirs=( common rt meta cv gen ot px hd util cal )
RUN pushd src/common && /usr/local/bin/rmake -k install && popd
RUN pushd src/rt && /usr/local/bin/rmake -k install && popd
RUN pushd src/meta && /usr/local/bin/rmake -k install && popd
RUN pushd src/cv && /usr/local/bin/rmake -k install && popd
RUN pushd src/gen && /usr/local/bin/rmake -k install && popd
RUN pushd src/ot && /usr/local/bin/rmake -k install && popd
RUN pushd src/px && /usr/local/bin/rmake -k install && popd
RUN pushd src/hd && /usr/local/bin/rmake -k install && popd
RUN pushd src/util && /usr/local/bin/rmake -k install && popd
RUN pushd src/cal && /usr/local/bin/rmake -k install && popd

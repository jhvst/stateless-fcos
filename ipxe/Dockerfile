FROM ubuntu

RUN apt update
RUN apt install -y git gcc binutils make perl mtools liblzma-dev mkisofs syslinux
RUN git clone git://git.ipxe.org/ipxe.git

WORKDIR ipxe/src
RUN make /mnt/coreos/undionly.kpxe EMBED=/mnt/coreos/$(A)
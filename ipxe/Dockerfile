FROM ubuntu

RUN apt update
RUN apt install -y git gcc binutils make perl mtools liblzma-dev mkisofs syslinux
RUN git clone git://git.ipxe.org/ipxe.git /tmp/ipxe
RUN sed -i 's|.*DOWNLOAD_PROTO_HTTPS|#define DOWNLOAD_PROTO_HTTPS|' /tmp/ipxe/src/config/general.h
RUN make --directory=/tmp/ipxe/src bin/undionly.kpxe
CMD make --directory=/tmp/ipxe/src bin/undionly.kpxe EMBED=/mnt/coreos/peli.ipxe && mv /tmp/ipxe/src/bin/undionly.kpxe /mnt/coreos
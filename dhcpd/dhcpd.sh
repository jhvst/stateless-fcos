sudo docker run \
    -d \
    --name dhcpd \
    --init \
    --cap-add NET_ADMIN \
    --net=host \
    -v $(pwd)/cfg:/data:Z \
    networkboot/dhcpd enp0s31f6
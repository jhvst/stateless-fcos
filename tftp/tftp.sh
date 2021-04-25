sudo docker run \
    -d \
    --name tftp \
    --cap-add NET_ADMIN \
    --net=host \
    -v $(pwd):/var/tftpboot:Z \
    taskinen/tftp
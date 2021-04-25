# http-server

Fedora CoreOS uses Ignition to initialize the OS, but Ignition does not understand TFTP. We must thus use some other protocol for which HTTP seems fine.

This folder has files which handle the parts in bold:

BIOS -> PXE -> iPXE -> **Fedora CoreOS**

### How-to use

Any HTTP server will do, but here is one in Python:

1. Look into `ignition/` to see how to produce Ignition files from Butane files.
2. `podman run -it --cap-add NET_ADMIN --net=host -v $(pwd):/mnt/coreos:Z ubuntu`
3. `apt update && apt install python3`
4. `python3 -m http.server 8014`

Leave this server open, and boot into PXE on another computer. The computer should now boot into login prompt of Fedora CoreOS. If you can now close all the containers created during these steps unless you plan on booting more nodes.
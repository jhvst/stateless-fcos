# ipxe

iPXE is the cool PXE loader, so we naturally want it.

This folder has files which handle the parts in bold:

BIOS -> PXE -> **iPXE -> Fedora CoreOS**

### How-to use

1. `podman run -it -v $(pwd):/mnt/coreos:Z ubuntu`
2. Follow the installation instructions on the broken `Dockerfile`.
3. Finally, file called `undionly.kpxe` should appear in this folder on the host. Copy it to the `tftp` folder, and continue with `tftp` install instructions.
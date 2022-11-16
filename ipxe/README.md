# ipxe

iPXE is the cool PXE loader, so we naturally want it.

This folder has files which handle the parts in bold:

BIOS -> PXE -> **iPXE -> Fedora CoreOS**

### How-to use

1. `podman build -t local/ipxe .`
1. `podman run -v $(pwd):/mnt/coreos:Z local/ipxe`
2. File called `undionly.kpxe` should appear in this folder. Copy it to the `tftp` folder. Then, continue with `tftp` install instructions.
# tftp

The legend has it that the t in FTP stands for "the-best".

This folder has files which handle the parts in bold:

BIOS -> PXE -> **iPXE -> Fedora CoreOS**

This is the folder to which you should place `initramfs` and `kernel` files. In the case of Fedora CoreOS, you would download to this folder the following files:

1. https://builds.coreos.fedoraproject.org/prod/streams/stable/builds/33.20210328.3.0/x86_64/fedora-coreos-33.20210328.3.0-live-kernel-x86_64
2. https://builds.coreos.fedoraproject.org/prod/streams/stable/builds/33.20210328.3.0/x86_64/fedora-coreos-33.20210328.3.0-live-initramfs.x86_64.img

In addition, you need to place the iPXE bootloader here, usually called `undionly.kpxe`. However, to automatically run something, we need to embed a script into it. Otherwise, the iPXE will issue a DHCP command and boot-loop itself.

### How-to use

1. In the project root folder, there is a `ipxe` folder. Follow these instructions to create your own `undionly.kpxe`, and then place the produced file here.
2. Ensure the folder contains a live kernel and live initramfs files.
3. Run `tftp.sh`.

If you boot into PXE now, the computer should manage to load itself into a preboot environment of Fedora CoreOS. This installation will fail, because it cannot fetch `ignition` and `rootfs` files. To resolve this, continue to `http-server` folder.
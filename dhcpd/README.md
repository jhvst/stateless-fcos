# dhcpd

PXE needs a DHCP in (local?) network to tell what to boot.

This folder has files which handle the parts in bold:

BIOS -> **PXE -> iPXE** -> Fedora CoreOS

## How-to use

1. On the host computer, create create a new subnet to an available interface as so: `sudo ip addr add 192.168.18.1/24 dev enp0s31f6`, where `enp0s31f6` is the interface name you get from `ip a`. You may also change the subnet space if it conflicts with existing one.
2. In `dhcpd.sh`, change the last argument to the interface name from above.
3. In `cfg/dhcpd.conf` change the network settings to match the subnet you just created. Ensure the `next-server` field matches with the `ip addr` one.

If successful, you computer should receive a DHCP lease on PXE boot. It will give an error of some sort most likely, because you now need a TFTP server. See the `tftp` folder in project root to set it up next.
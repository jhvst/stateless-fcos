# stateless-fcos
## Booting live Fedora CoreOS via iPXE

Once upon a time I ran CoreOS machines. Then, CoreOS got bought by RedHat. Then, RedHat got bought by IBM. I was quite happy with it all. I owned RedHat shares.

Next, CoreOS became Fedora CoreOS. When I upgraded to Fedora CoreOS, I found about live booting via iPXE. This was such a hassle that I put up this repository.

## Introduction:

We want to make a boot sequence as follows:

BIOS -> PXE -> iPXE -> Fedora CoreOS

This happens roughly as follows:

```
[Client]                   [Server]
1. BIOS
2. PXE                  -> DHCP
3. iPXE                 <- iPXE image (`undionly.kpxe`)
4. REQ TFTP             -> TFTP server
5. iPXE BOOT            <- Fedora CoreOS initramfs,kernel
6. REQ Ignition         -> HTTP server
7. Fedora CoreOS        <- Ignition file, Fedora CoreOS rootfs
8. Successful RAM boot
```

To prepare for successful RAM boot, you may start from `dhcpd` folder.

## Background

My infra is as follows:

```
pfSense router [1]-[2]-[3]-[4]
               [?] [?] [?] [|]
                           [|]
                    "muro" [1]--[2]
                                [|]
                        "peli"  [1]
```

In other words, my router has four ports. Port 4 goes to a computer `muro` which has two ports. Muro shares WAN and pfSense LAN connection to `peli`.

`muro` boots CoreOS from pfSense. `peli` boots CoreOS from `muro`. This project demonstrates how `peli` boots from `muro`. As such, throughout the READMEs the packages are installed on `muro` and the computer which is booting PXE is `peli`.
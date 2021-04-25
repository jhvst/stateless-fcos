# stateless-fcos
Booting live Fedora CoreOS via iPXE

Once upon a time I ran CoreOS machines. Then, CoreOS got bought by RedHat. Then, RedHat got bought by IBM. I was quite happy with it all since I owned RedHat shares.

Some time after, CoreOS also became Fedora CoreOS. As I evolved my own infra, I found about live booting via iPXE, so I put together an infra.

This project has all the files for a computer to mimic a router. This is because in my case the inner network is as follows:

```
pfSense router [1]-[2]-[3]-[4]
               [?] [?] [?] [|]
                           [|]
                    "muro" [1]--[2]
                                [|]
                        "peli"  [1]
```

The idea is that the router has four ports, of which one goes to a node called "muro", which has two ports, of which one goes to a node called "peli". This project has files so that a) "muro" can share the upstream network to "peli" and b) "peli" can boot from "muro", which in itself boots from pfSense.

Throughout the README, the host computer to which the packages are installed is supposed to be "muro" and the computer which is booting PXE is "peli".
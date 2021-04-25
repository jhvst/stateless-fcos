# ignition

### How-to use

1. Specify Butane files in .bu
2. Acquire Butane-to-Ignition compiler, see, e.g. https://docs.fedoraproject.org/en-US/fedora-coreos/producing-ign/
3. `butane --pretty --strict < example.bu > example.ign`
4. Ensure that the Ignition filename corresponds to that listed in `/ipxe` folder's `.ipxe` files.
5. Start the http-server found in the parent folder.
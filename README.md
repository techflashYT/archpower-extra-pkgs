# ArchPOWER "extra" packages

Packages from the "extra" repo of Arch Linux, ported to ArchPOWER.  

These are chosen by hand.  If you would like to request a package to be added, please open an issue.  

These packages mostly target whatever the latest available code in the the Arch Linux GitLab is.  

The primary target for these packages is 32-bit PowerPC, and are mainly for [the Wii Linux Project](https://github.com/Wii-Linux).
They can, however, can be installed on any 32-bit PowerPC (`powerpc`), 64-bit PowerPC (`powerpc64`), or 64-bit POWER (`powerpc64le`) machine.  Note that not all packages are available for all architectures due to code limitations.  Some packages cannot be built for a given architecture.

To use my repo, simply add the following to your pacman.conf

```
[extra-any]
Server = https://repo.wii-linux.org/arch/extra/any

[extra]
Server = https://repo.wii-linux.org/arch/extra/$arch
```

You'll also need to download and install the keyring, which can be obtained from [here](https://repo.wii-linux.org/arch/wiilinux/wii-linux-keyring-1.0-2-any.pkg.tar.zst).

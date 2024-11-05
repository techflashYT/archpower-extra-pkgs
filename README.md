# ArchPOWER "extra" packages

Packages from the "extra" repo of Arch Linux, ported to ArchPOWER.  

These are chosen by hand.  If you would like to request a package to be added, please open an issue.  

These packages mostly target whatever the latest available code in the the Arch Linux GitLab is.  

These packages are specifically targetting 32-bit PPC, and are mainly for [the Wii Linux Project](https://github.com/Wii-Linux).
They can, however, can be installed on any PowerPC machine, such as an iBook G3.  

To use my repo, simply add the following to your pacman.conf

```
[extra]
Server = https://repo.wii-linux.org/arch/extra/
```

You'll also need to download and install the keyring, which can be obtained from [here](https://repo.wii-linux.org/arch/wiilinux/wii-linux-keyring-1.0-2-any.pkg.tar.zst).

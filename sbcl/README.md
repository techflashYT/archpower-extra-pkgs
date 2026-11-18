# Packaging notes

To allow for bootstraping this package, the PKGBUILD can build using either clisp or SBCL.
Simply change the first member of `makedepends` to specify the host Lisp to build with.

## Upstream notes

These notes were in the README.md for the upstream Arch package. They're reproduced here just in case.

> Whenever `sbcl` or `ecl` are updated, `maxima` needs to be updated as well.
>
> When `sbcl` is updated, `stumpwm` needs to be updated as well.

As of November 16, 2026, neither `maxima` nor `stumpwm` have been ported to ArchPOWER.
PRINC := "${@int(PRINC) + 501}"

IMAGE_INSTALL += " qemu-dm "

PACKAGE_REMOVE += " ioemu "

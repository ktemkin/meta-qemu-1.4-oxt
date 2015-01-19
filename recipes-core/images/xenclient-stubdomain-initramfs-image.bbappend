PRINC := "${@int(PRINC) + 500}"

IMAGE_INSTALL += " qemu-dm-stubdom rsyslog "
RDEPENDS += " qemu-dm-stubdom-extra-roms "
# does not work - use PACKAGE_REMOVE
#IMAGE_INSTALL_remove = "ioemu"
#python () {
#  import string
#  rdeps = bb.data.getVar("IMAGE_INSTALL", d)
#  rdeps = string.replace(rdeps, "ioemu", "")
#  bb.data.setVar("IMAGE_INSTALL", rdeps, d)
#}

PACKAGE_REMOVE += " ioemu "

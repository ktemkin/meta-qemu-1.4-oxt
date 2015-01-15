FILESEXTRAPATHS := "${THISDIR}/${PN}:"

PRINC := "${@int(PRINC) + 200}"

SRC_URI += "file://files/0006-qemu-Add-xen-pci-passthrough-command.patch;PATCH=1"
SRC_URI += "file://files/0003-qemu-cdrom-and-atapi-pt-emulation-comnands.patc;PATCH=1"
SRC_URI += "file://files/0004-qemu-ioemu-Add-XenMou-device.patc;PATCH=1"
SRC_URI += "file://files/0005-qemu-Add-battery-command.patc;PATCH=1"
SRC_URI += "file://files/0002-Add-qemu-dm-wrapper-script.patc;PATCH=1"
SRC_URI += "file://files/0001-Fix-headers-in-Makefiles.patc;PATCH=1"


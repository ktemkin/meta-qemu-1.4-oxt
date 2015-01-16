FILESEXTRAPATHS := "${THISDIR}/files:"

PRINC := "${@int(PRINC) + 500}"

SRC_URI += " \
  file://0006-qemu-Add-xen-pci-passthrough-command.patch \
  file://0003-qemu-cdrom-and-atapi-pt-emulation-comnands.patch \
  file://0004-qemu-ioemu-Add-XenMou-device.patch \
  file://0005-qemu-Add-battery-command.patch \
  file://0002-Add-qemu-dm-wrapper-script.patch \
  file://0001-Fix-headers-in-Makefiles.patch \
"


FILESEXTRAPATHS := "${THISDIR}/${PN}:"

PRINC := "${@int(PRINC) + 503}"

SRC_URI += " \
  file://0001-xenops-dm-agent-add-drive-device.patch \
  file://0002-dmagent-pass-to-stubdom-cmdline-a-flag-for-qemu-dm.patch \
  file://0003-xenops-dmagent-handle-cdrom-pt-ro-exclusive.patch \
  file://0004-dmagent-pass-to-dm-agent-a-name-for-nic-device.patch \
  file://0005-qemu-1.4-add-xenmou-device-configuration-for-dm-agen.patch \
  file://0006-qemu-1.4-add-pci-passthrough-information-for-dm-agen.patch \
  file://0007-qemu-1.4-add-xenbattery-information-for-dm-agent.patch \
  file://0008-dmagent-drive-move-the-file-name-to-dev-xvd-i-instea.patch \
  file://0009-qemu-1.4-allow-e1000-net-device-for-qemu-by-using-a-.patch \
  file://0010-dmagent-Use-ISO-images-from-dom0.patch \
  file://0011-stubdom-Give-64M-memory.patch \
  file://0012-qemu-device-pass-disk-readonly-flag.patch \
  file://0013-stubdom-pciback-permissive.patch \
  file://0014-stubdom-pciback-reset-perm.patch \
"


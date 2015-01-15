FILESEXTRAPATHS := "${THISDIR}/${PN}:"

PRINC := "${@int(PRINC) + 200}"

SRC_URI += "file://files/0004-dmagent-pass-to-dm-agent-a-name-for-nic-device.patch;PATCH=1"
SRC_URI += "file://files/0009-qemu-1.4-allow-e1000-net-device-for-qemu-by-using-a-.patch;PATCH=1"
SRC_URI += "file://files/0003-xenops-dmagent-handle-cdrom-pt-ro-exclusive.patch;PATCH=1"
SRC_URI += "file://files/0007-qemu-1.4-add-xenbattery-information-for-dm-agent.patch;PATCH=1"
SRC_URI += "file://files/0002-dmagent-pass-to-stubdom-cmdline-a-flag-for-qemu-dm.patch;PATCH=1"
SRC_URI += "file://files/0010-dmagent-Use-ISO-images-from-dom0.patch;PATCH=1"
SRC_URI += "file://files/0001-xenops-dm-agent-add-drive-device.patch;PATCH=1"
SRC_URI += "file://files/0005-qemu-1.4-add-xenmou-device-configuration-for-dm-agen.patch;PATCH=1"
SRC_URI += "file://files/0006-qemu-1.4-add-pci-passthrough-information-for-dm-agen.patch;PATCH=1"
SRC_URI += "file://files/0008-dmagent-drive-move-the-file-name-to-dev-xvd-i-instea.patch;PATCH=1"
SRC_URI += "file://files/0011-stubdom-Give-64M-memory.patch;PATCH=1"


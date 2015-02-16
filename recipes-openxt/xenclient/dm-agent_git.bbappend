FILESEXTRAMETA := "${THISDIR}/${PN}"
FILESEXTRAPATHS_prepend := "${FILESEXTRAMETA}:"

PRINC := "${@int(PRINC) + 1}"

SRC_URI += "file://qemu1.4_dm-agent_use_svirt-interpose.patch;patch=1"

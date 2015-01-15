FILESEXTRAPATHS := "${THISDIR}/${PN}:"

PRINC := "${@int(PRINC) + 200}"

SRC_URI += "file://files/0002-atapi-pt-helper-Qemu-dm-cleanup.patch;PATCH=1"
SRC_URI += "file://files/0001-atapi_pt_helper-Add-.gitignore.patch;PATCH=1"




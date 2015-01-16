FILESEXTRAPATHS := "${THISDIR}/files:"

PRINC := "${@int(PRINC) + 500}"

SRC_URI += " \
  file://0001-atapi_pt_helper-Add-.gitignore.patch;striplevel=2 \
  file://0002-atapi-pt-helper-Qemu-dm-cleanup.patch;striplevel=2 \
"


FILESEXTRAMETA := "${THISDIR}/${PN}"
FILESEXTRAPATHS_prepend := "${FILESEXTRAMETA}:"

PRINC := "${@int(PRINC) + 1}"

SRC_URI += " \
    file://qemu1.4_wrapper_file_context.patch;patch=1 \
"

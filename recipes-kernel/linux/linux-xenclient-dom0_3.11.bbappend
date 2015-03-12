FILESEXTRAMETA := "${THISDIR}/${PN}-3.11:"
FILESEXTRAPATHS_prepend := "${FILESEXTRAMETA}:"

SRC_URI += " \
            file://pciback-restrictive-attr.patch;patch=1 \
            "

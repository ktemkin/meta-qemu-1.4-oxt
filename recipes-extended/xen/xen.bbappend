FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI +=  " \
             file://stubdomain-msi-irq-access.patch;patch=1 \
             "

# This removes the hypervisor support for multiple device models for a single domain
python () {
      import string
      xen_src_uri = bb.data.getVar('SRC_URI', d)
      xen_src_uri = string.replace(xen_src_uri, "file://xc-xt-ioreq-multiple.patch;patch=1", "")
      bb.data.setVar('SRC_URI', xen_src_uri, d)
}

PRINC := "${@int(PRINC) + 501}"

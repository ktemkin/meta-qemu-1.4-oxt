PRINC := "${@int(PRINC) + 151}"

IMAGE_INSTALL += " qemu-dm-stubdom rsyslog "

#IMAGE_INSTALL_remove = "ioemu"

# the above doesn't work?? use python
python () {
  import string
  rdeps = bb.data.getVar("IMAGE_INSTALL", d)
  rdeps = string.replace(rdeps, "ioemu", "")
  bb.data.setVar("IMAGE_INSTALL", rdeps, d)
}

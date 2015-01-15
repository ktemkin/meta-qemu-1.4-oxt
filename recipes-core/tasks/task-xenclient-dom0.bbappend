RDEPENDS_${PN}_remove = "ioemu"

# the above doesn't work?? use python
python () {
  import string
  rdeps = bb.data.getVar("RDEPENDS_task-xenclient-dom0", d)
  rdeps = string.replace(rdeps, "ioemu", "")
  bb.data.setVar("RDEPENDS_task-xenclient-dom0", rdeps, d)
}
PR = "r599"

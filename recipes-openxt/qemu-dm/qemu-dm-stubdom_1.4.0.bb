require qemu-dm.inc

SRC_URI += " \
            file://qemu-ifup-stubdom \
            "

EXTRA_OECONF += "--enable-debug --disable-strip --audio-drv-list=xen_alsa"

do_install_append(){
    install -m 0755 -d ${D}${sysconfdir}/qemu
    install -m 0755 ${WORKDIR}/qemu-ifup-stubdom ${D}${sysconfdir}/qemu/qemu-ifup
}

PR = "${INC_PR}.3"

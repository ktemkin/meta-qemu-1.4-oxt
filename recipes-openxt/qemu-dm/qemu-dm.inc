LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=441c28d2cf86e15a37fa47e15a72fbac  \
                    file://COPYING.LIB;md5=79ffa0ec772fa86740948cb7327a0cc7"
DEPENDS = "xen-tools alsa-lib pciutils libpng blktap libxenacpi libv4v openssl zlib libcap-ng libdmbus"

SRC_URI = "http://wiki.qemu-project.org/download/qemu-${PV}.tar.bz2 \
            file://generic-xenstore-watch-callback-support.patch \
            file://static-fix.patch;patch=1 \
            file://ioreq-server-upstream.patch;patch=1 \
            file://ioreq-server.patch;patch=1 \
            file://logging-syslog.patch;patch=1 \
            file://dmbus.patch;patch=1 \
            file://pci-reserve-igd-slot.patch;patch=1 \
            file://input-server.patch;patch=1 \
            file://acpi.patch;patch=1 \
            file://xc-emulated-nic-link-state-propagation.patch;patch=1 \
            file://battery.patch;patch=1 \
            file://audio-alsa.patch;patch=1 \
            file://xenmou.patch;patch=1 \
            file://audio-alsa-stub.patch;patch=1 \
            file://atapi-pass-through.patch;patch=1 \
            file://vbe-xt-extensions.patch;patch=1 \
            file://vga-spinlock.patch;patch=1 \
            file://vga-shadow-bda.patch;patch=1 \
            file://audio-policy.patch;patch=1 \
            file://surfman-display-handler.patch;patch=1 \
            "

SRC_URI[md5sum] = "78f13b774814b6b7ebcaf4f9b9204318"
SRC_URI[sha256sum] = "066297ed77408fb7588889c271a85cf3c259ad55c939315988e6062d7708eda8"

S = "${WORKDIR}/qemu-${PV}"

inherit xenclient
inherit autotools

# Include a minimal amount of blobs by default.
FILES_${PN} += "/usr/share/qemu/keymaps/en-us       \
                /usr/share/qemu/keymaps/commons     \
                /usr/share/qemu/keymaps/modifiers   \
                "
FILES_${PN}-extra-keymaps = "/usr/share/qemu/keymaps/*"
FILES_${PN}-extra-roms = "/usr/share/qemu/*"
INSANE_SKIP_${PN}-extra-roms = "arch"

PACKAGES += "${PN}-extra-keymaps ${PN}-extra-roms"

do_configure(){
    ${S}/configure ${EXTRA_OECONF} --enable-xen \
                --target-list=i386-softmmu \
                --prefix=${prefix} --sysconfdir=${sysconfdir} \
                --extra-cflags="-I${STAGING_INCDIR}" \
                --extra-ldflags="-L${STAGING_LIBDIR}" \
                --disable-sdl --disable-vnc \
                --disable-pie --disable-docs\
                --disable-virtfs --disable-bluez \
                --disable-guest-agent --disable-curses \
                --disable-slirp --disable-curl \
                --disable-kvm --disable-tools \
                --disable-guest-base --enable-werror \
                --without-system-pixman \
                --enable-debug \
                --enable-surfman \
                --enable-atapi-pt --enable-atapi-pt-v4v
}

do_compile(){
    DESTDIR=${D} oe_runmake AUTOCONF_HOST='--host=`arch`'
}

do_install(){
    # QEMU's build system conflicts with STRIP defined in OE.
    DESTDIR=${D} oe_runmake STRIP='' install
}

INC_PR = "r5"

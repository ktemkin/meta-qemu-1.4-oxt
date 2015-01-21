LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=441c28d2cf86e15a37fa47e15a72fbac  \
                    file://COPYING.LIB;md5=79ffa0ec772fa86740948cb7327a0cc7"
DEPENDS = "xen-tools alsa-lib pciutils libpng blktap libxenacpi libv4v openssl zlib libcap-ng libdmbus"

SRC_URI = "http://wiki.qemu-project.org/download/qemu-${PV}.tar.bz2;name=tarball"

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

INC_PR = "r1"

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
                --enable-surfman
}

do_compile(){
    DESTDIR=${D} oe_runmake AUTOCONF_HOST='--host=`arch`'
}

do_install(){
    # QEMU's build system conflicts with STRIP defined in OE.
    DESTDIR=${D} oe_runmake STRIP='' install
}

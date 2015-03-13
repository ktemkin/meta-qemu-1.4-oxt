require qemu-dm.inc

EXTRA_OECONF += "--enable-debug --disable-strip --audio-drv-list=alsa "

PR = "${INC_PR}.3"

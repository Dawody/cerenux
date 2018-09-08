DESCRIPTION = "Installation of weston.ini config file"
LICENSE = "CLOSED"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append = " file://weston.ini"

do_install_append() {
    WESTON_INI_CONFIG=${sysconfdir}/xdg/weston
#    WESTON_INI_CONFIG=/.config
#    WESTON_INI_CONFIG=/run/user/root/weston
    install -d ${D}${WESTON_INI_CONFIG}
    install -m 0644 ${WORKDIR}/weston.ini ${D}${WESTON_INI_CONFIG}
}

PACKAGES += "${PN}-ini"
FILES_${PN}-ini = "${sysconfdir}/xdg"



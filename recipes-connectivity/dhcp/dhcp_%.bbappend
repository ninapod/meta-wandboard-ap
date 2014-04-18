FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_wandboard = "file://wandboard-dhcpd.conf"

do_install_append () {
        rm -f ${D}${sysconfdir}/dhcpd.conf*
        install -m 0644 ${WORKDIR}/wandboard-dhcpd.conf ${D}${sysconfdir}/dhcp/dhcpd.conf
}

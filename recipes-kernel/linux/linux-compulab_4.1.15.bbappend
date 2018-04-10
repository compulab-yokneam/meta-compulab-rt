FILESEXTRAPATHS_prepend := "${THISDIR}/compulab-rt:"

LOCALVERSION = "-compulab-rt"

SRC_URI_append = "\
	file://1000-cl-som-imx6-rt-patch-4.1.15-rt16.patch.patch \
	file://1001-cl-som-imx6-Update-defconfig-for-RT.patch \
	file://1002-cl-som-imx6-modifications.patch \
"

addtask cl_som_imx6_defconfig after do_configure before do_compile
do_cl_som_imx6_defconfig () {
	oe_runmake -C ${S} O=${B} cl_som_imx6_defconfig
}

COMPATIBLE_MACHINE = "(cl-som-imx6)"

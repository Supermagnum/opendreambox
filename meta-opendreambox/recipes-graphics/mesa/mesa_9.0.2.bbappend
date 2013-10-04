PROVIDES = "virtual/libgl"
PACKAGECONFIG = " \
  ${@base_contains('DISTRO_FEATURES', 'x11', 'x11', '', d)} \
  ${@base_contains('DISTRO_FEATURES', 'wayland', 'egl wayland', '', d)} \
"
EGL_PLATFORMS = "${@base_contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"

do_configure_prepend() {
	# Don't build or install libEGL.
	sed -e 's,\<main\>,,' -i ${S}/src/egl/Makefile.am
}
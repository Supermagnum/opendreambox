require libv3ddriver.inc

SRC_URI[dm7080.md5sum] = "7f831c01995768c2d9ea8dd70f529633"
SRC_URI[dm7080.sha256sum] = "7dfd19111a69f50171838ad4f8fab1e985e6792f81b6225bdc18a97599138d58"

PRECOMPILED_ARCH_mipsel = "dm7080"

inherit opendreambox-precompiled-binary

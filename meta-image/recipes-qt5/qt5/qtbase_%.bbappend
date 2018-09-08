PACKAGECONFIG_GLES2 ?= "${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'gles2', '', d)}"
PACKAGECONFIG_FONTS = "fontconfig freetype"

PACKAGECONFIG_append = " ${PACKAGECONFIG_GLES2}"
PACKAGECONFIG_remove = " ${PACKAGECONFIG_GL}"




#EXTRA_OECONF_append = " -qpa wayland"

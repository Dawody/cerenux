SUMMARY = "Userspace framebuffer boot logo based on usplash"
DESCRIPTION = "This file append the original recipe @ openembedded-core/meta/recipes-core/psplash/psplash_git.bb This file provide the image for Cerenux custom distribution"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SPLASH_IMAGES = "file://cerenux_logo.png;outsuffix=default"

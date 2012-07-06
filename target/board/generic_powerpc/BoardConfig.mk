# config.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_CPU_ABI := ppc440e
TARGET_ARCH := powerpc
TARGET_ARCH_VARIANT := ppc440e
TARGET_PRELINK_MODULE := false

# The PowerPC emulator (qemu) uses the Goldfish devices
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true

# no hardware camera
USE_CAMERA_STUB := true

# Set /system/bin/sh to mksh, not ash, to test the transition.
TARGET_SHELL := mksh

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
WITH_DEXPREOPT := true
endif
# Build OpenGLES emulation host and guest libraries
BUILD_EMULATOR_OPENGL := true

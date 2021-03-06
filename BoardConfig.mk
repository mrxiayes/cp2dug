USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/cp2dug/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := cp2dug
TARGET_BOOTLOADER_BOARD_NAME := cp2dug

BOARD_KERNEL_CMDLINE := cachepolicy=writealloc noinitrd init=init board_id= vmalloc=128M logo. startup_graphics= mpcore_wdt.mpcore_margin=359 root=/dev/ram0 rw rootwait mem=101M@0 mem_mtrace=10M@101M mem_mshared=1M@111M mem_modem=16M@112M hwmem=100M@128M mem=155M@228M mem_issw=1M@383M mem=127M@384M ram_console=1M@511M
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x007f8000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x007f8000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x50000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x78000000
BOARD_FLASH_BLOCK_SIZE := 0x00000200

TARGET_PREBUILT_KERNEL := device/htc/cp2dug/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_INITRC := device/htc/cp2dug/recovery.rc

DEVICE_RESOLUTION := 480x800

#BOARD_FORCE_RAMDISK_ADDRESS := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
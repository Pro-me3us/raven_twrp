DEVICE_FOLDER := device/amlogic/raven

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true
ENABLE_CPUSETS := true

# Platform
BOARD_VENDOR := amazon
TARGET_SOC := s922x
TARGET_BOARD_HARDWARE := amlogic
TARGET_BOARD_PLATFORM := g12b
TARGET_BOARD_PLATFORM_GPU := mali-g52mp2
TARGET_BOOTLOADER_BOARD_NAME := raven
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Graphics
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x01080000 --ramdisk_offset 0x01000000 --second_offset 0x00F00000 --tags_offset 0x00000100 --second $(DEVICE_FOLDER)/prebuilt/second --header_version 1
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel
#TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/root/etc/recovery.fstab

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x64000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x20000000
BOARD_VENDORIMAGE_PARTITION_SIZE := 0x9600000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x316600000

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
#BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := false
#BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_AVB_ENABLE := true

# Debug
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TWRP_EVENT_LOGGING := false

# TWRP specific build flags
TW_DEFAULT_BACKUP_LIST := "/system_image;/vendor_image;/data;/boot;"
RECOVERY_VARIANT := twrp
#RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_FORCE_PIXEL_FORMAT := "RGB_565"
TW_THEME := landscape_hdpi
#TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_CRYPTO := true
#TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_NO_BATT_PERCENT := true
TW_NO_SCREEN_TIMEOUT := true
#TW_NO_REBOOT_BOOTLOADER := true
TW_NO_LEGACY_PROPS := true
#TW_DEVICE_VERSION := 0

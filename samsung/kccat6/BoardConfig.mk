USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/kccat6/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := APQ8084

# Platform
TARGET_BOARD_PLATFORM := apq8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP -DQCOM_HARDWARE

# Architecture
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

BOARD_KERNEL_CMDLINE :=  console=null androidboot.selinux=permissive androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3b7 dwc3_msm.cpu_to_affin=1
BOARD_KERNEL_BASE :=  0x00000000
BOARD_KERNEL_PAGESIZE := 4096
# OEM uses non standard offsets for base, ramdisk, and tags.
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02600000 --tags_offset 0x02400000 --dt device/samsung/kccat6/prebuilt/dtb

BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2621440000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12577636352
# page size multiplied by 64
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_PREBUILT_KERNEL := device/samsung/kccat6/prebuilt/kernel

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/f9200000.ssusb/f9200000.dwc/gadget/lun0/file

# The two directions under this comment are both linked to the real file
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/f_mass_storage/lun/file
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

#TWRP specific build flags
TW_THEME := portrait_hdpi
TWHAVE_SELINUX := true
TARGET_RECOVERY_INITRC := device/samsung/kccat6/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/kccat6/recovery/etc/recovery.fstab
# /data/media exists
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/virtual/lcd/panel/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
GET_RECOVERY_QCOM_RTC_FIX := true
TW_TARGET_USES_QCOM_BSP := true
# TW_EXCLUDE_MTP := true # Why exclude MTP?
# LZMA ramdisk
# BOARD_CUSTOM_BOOTIMG_MK := device/samsung/kccat6/custombootimg.mk # Does kernel support LZMA?
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

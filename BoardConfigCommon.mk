USE_CAMERA_STUB := false

# Platform
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true
TARGET_HAVE_TSLIB := true
TARGET_CPU_VARIANT:= scorpion
BOARD_WANTS_EMMC_BOOT := true

TARGET_QCOM_DISPLAY_VARIANT := legacy

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_QCOM_TUNNEL_LPA_ENABLED := false

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
TARGET_GRALLOC_USES_ASHMEM := true

BOARD_USE_SKIA_LCDTEXT := true

COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH -DICS_AUDIO_BLOB

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Graphics
DCHECK_FOR_EXTERNAL_FORMAT := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
BOARD_EGL_CFG := device/huawei/msm7x30-common/egl.cfg
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_NO_RGBX_8888 := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

# Qcom/Display
TARGET_USES_ION := false
#TARGET_NO_HW_OVERLAY := true
TARGET_NO_HW_VSYNC := true
TARGET_NO_HDMI := true
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_EGL_NEEDS_FNW := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS :=3
COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK -DANCIENT_GL

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
WEBCORE_INPAGE_VIDEO := true

# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/vendor/firmware/nvram.txt"
# flag for huawei
BOARD_USE_HUAWEI_BCM_WIFI := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/huawei/msm7x30-common/bluetooth/vnd_msm7x30.txt

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_LIBRARIES := libloc_api

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE := kernel/huawei/honor
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# File System
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 14

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_CHARGEMODE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
TARGET_RECOVERY_INITRC := device/huawei/msm7x30-common/recovery/recovery.rc
#TARGET_RECOVERY_FSTAB := device/huawei/msm7x30-common/recovery_recovery.fstab
BOARD_RECOVERY_RMT_STORAGE := true
#BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/msm7x30-common/recovery/graphics_cn.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/msm7x30-common/recovery_kernel
TARGET_RECOVERY_FSTAB            := device/huawei/msm7x30-common/ramdisk/fstab.huawei
RECOVERY_FSTAB_VERSION           := 2

# Custom releasetools for old partition table.
TARGET_PROVIDES_RELEASETOOLS := true

# ETC
TARGET_SPECIFIC_HEADER_PATH := device/huawei/msm7x30-common/include

# config.mk
#
# Product-specific compile-time definitions.
#
TARGET_BOARD_PLATFORM := exynos4
TARGET_SOC := exynos4x12

# CPU options
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_PROVIDES_INIT_RC := true
TARGET_BOOTLOADER_BOARD_NAME := stuttgart
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# Invensense Gyroscope
BOARD_USES_GYRO := false

# Yamaha Compass
BOARD_USES_COMPASS := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_I2S_AUDIO := true
BOARD_USES_PCM_AUDIO := false
BOARD_USES_SPDIF_AUDIO := false
BOARD_HAVE_BLUETOOTH := false

# ULP Audio
USE_ULP_AUDIO := false

# ALP Audio
BOARD_USE_ALP_AUDIO := false


# Enable JIT
WITH_JIT := true

BOARD_HAS_TWOSTORAGES := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 734003200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3145728000
BOARD_PRELOADIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRELOADIMAGE_PARTITION_SIZE := 418381824
BOARD_FLASH_BLOCK_SIZE := 2048

BOARD_USES_HGL := true
BOARD_NO_32BPP := true
BOARD_EGL_CFG := device/lenovo/stuttgart/conf/egl.cfg

BOARD_USES_HDMI_SUBTITLES := false
BOARD_USES_HDMI := false
BOARD_HDMI_STD := STD_1080P
BOARD_HDMI_DDC_CH := DDC_CH_I2C_2
BOARD_USES_FIMGAPI := true
BOARD_USES_SKIAHWJPEG := false

BOARD_USE_WFD := false

BOARD_USE_SAMSUNG_COLORFORMAT := true
BOARD_FIX_NATIVE_COLOR_FORMAT := true
BOARD_NONBLOCK_MODE_PROCESS := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USES_MFC_FPS := true
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_CSC_FIMC := false
BOARD_USE_DRM := true
BOARD_USE_EXYNOS_OMX := false

BOARD_USES_HIGH_RESOLUTION_LCD := false

# Enable V4L2 & ION
BOARD_USE_V4L2 := false
BOARD_USE_V4L2_ION := false

SCREEN_WIDTH := 1280
SCREEN_HEIGHT := 800
DEFAULT_FB_NUM := 0
# ALSA
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
# audio.primary.sample
#TARGET_BOOTLOADER_BOARD_NAME := sample

USE_OPENGL_RENDERER := true

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BLUETOOTH_USE_BPLUS := true

# Camera Zoom
CAMERA_USE_DIGITALZOOM :=true

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_MODULE_NAME     := "bcmdhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcmdhd.bin nvram_path=/system/etc/wifi/bcmdhd.cal iface_name=wlan0"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

#2012-4-14 add by liuwei28
#Lenovo shlould set product variable[MODEL/OPERATOR/SIMMODE] for each model.
#define model[ModelName]
TARGET_MODEL := stuttgart
#define operator type[none/chinatelecom/chinaunicom/chinamobile] 
TARGET_OPERATOR := none
#define sim mode[onesim/dualsim]
TARGET_SIMMODE := onesim






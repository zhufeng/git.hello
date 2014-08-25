# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for stuttgart hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

#Add dalvik variable by liuwei28
PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapstartsize=16m \
       dalvik.vm.heapgrowthlimit=128m \
       dalvik.vm.heapsize=256m


# Camera
# PRODUCT_PACKAGES += \
# 	SEC_Camera

# Live Wallpapers
PRODUCT_PACKAGES += \
	Galaxy4 \
	HoloSpiralWallpaper \
	NoiseField \
	PhaseBeam \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	VisualizationWallpapers \
	librs_jni

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/lenovo/stuttgart/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := stuttgart
PRODUCT_DEVICE := stuttgart
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo $(LENOVO_PRODUCT_NAME_2)

#COPY ALL FILES UNDER copyfiles WITH ITS HIERARCHY , BEGIN
define lenovo-all-files-under
 $(patsubst ./%,%, \
  $(shell cd $(LOCAL_PATH) ; \
          find $(1) -type f) \
 )
endef
CANDIDATE_FILES := $(call lenovo-all-files-under, copyfiles)
COPY_FILES := $(foreach f, $(CANDIDATE_FILES), $(LOCAL_PATH)/$(f):$(subst copyfiles/,,$(f)))
PRODUCT_COPY_FILES += $(COPY_FILES)
#END


PRODUCT_PROPERTY_OVERRIDES += \
	       persist.sys.timezone=Asia/Shanghai	
PRODUCT_PROPERTY_OVERRIDES += \
		       persist.sys.language=zh
PRODUCT_PROPERTY_OVERRIDES += \
		       persist.sys.country=CN
PRODUCT_PROPERTY_OVERRIDES += \
		       ro.product.locale.language=zh
PRODUCT_PROPERTY_OVERRIDES += \
		       ro.product.locale.region=CN
PRODUCT_PROPERTY_OVERRIDES += \
		ro.product.ota.model=LenovoK860i_ROM_ST
		       
#add app
# zhusf added to specify the language supported
PRODUCT_LOCALES := en_US zh_CN 
include device/lenovo/stuttgart/lenovoapp.mk

LENOVO_APP_CONFIG_MK:=vendor/lenovo/app/products/lenovo_app_project.mk
ifeq ($(LENOVO_APP_CONFIG_MK), $(wildcard $(LENOVO_APP_CONFIG_MK)))
#$(call inherit-product, $(LENOVO_APP_CONFIG_MK))
include $(LENOVO_APP_CONFIG_MK)
$(warning wangxuejin, using $(LENOVO_APP_CONFIG_MK), PRODUCT_PACKAGES is $(PRODUCT_PACKAGES))
else
$(warning ********don't find $(LENOVO_APP_CONFIG_MK),pls check it!)
endif
PRODUCT_LOCALES := en_US zh_CN
# begin, lenovo-sw  ltm-1 for lenovo ideaui 	
LENOVO_IDEAUI_SDK_VERSION := 1

PRODUCT_PROPERTY_OVERRIDES += \
    sys.lenovo.ideaui.version.sdk=$(LENOVO_IDEAUI_SDK_VERSION)
# end, lenovo-sw  ltm-1 for lenovo ideaui 

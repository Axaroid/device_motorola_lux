# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017 The LineageOS Project
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

$(call inherit-product, device/motorola/lux/full_lux.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_GAPPS_ARCH := arm
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_MINIMAL_APPS := true
TARGET_INCLUDE_WIFI_EXT := false
$(shell rm -rf vendor/google/customization/interfaces/wifi_ext)
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lux
PRODUCT_NAME := aosp_lux
PRODUCT_MODEL := Moto X Play
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := lux

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lux_retca-user 5.1.1 LPD23.118-10 19 release-keys"

BUILD_FINGERPRINT := "motorola/lux_retca/lux:5.1.1/LPD23.118-10/19:user/release-keys"

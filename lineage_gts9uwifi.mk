#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from gts9uwifi device
$(call inherit-product, device/samsung/gts9uwifi/device.mk)

PRODUCT_DEVICE := gts9uwifi
PRODUCT_NAME := lineage_gts9uwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X910
PRODUCT_MANUFACTURER := samsung

## S Pen
TARGET_HAVE_SPEN := true

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list,"gts9uwifixx-user 16 BP2A.250605.031 X910XXU5DYI7 release-keys")

BUILD_FINGERPRINT := samsung/gts9uwifixx/gts9uwifi:16/BP2A.250605.031.A3/X910XXU5DYI7:user/release-keys

#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from f12 device
$(call inherit-product, device/samsung/f12/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := f12
PRODUCT_NAME := lineage_f12
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-F127G
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="f12ins-user 13 TP1A.220624.014 F127GXXS9DXJ1 release-keys" \
    BuildFingerprint=samsung/f12ins/f12:13/TP1A.220624.014/F127GXXS9DXJ1:user/release-keys

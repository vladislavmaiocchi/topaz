#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

PRODUCT_DEVICE := topaz
PRODUCT_NAME := omni_topaz
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := topaz
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="topaz_eea-user 13 TKQ1.221114.001 V14.0.2.0.TMGEUXM release-keys"

BUILD_FINGERPRINT := Redmi/topaz_eea/topaz:13/TKQ1.221114.001/V14.0.2.0.TMGEUXM:user/release-keys

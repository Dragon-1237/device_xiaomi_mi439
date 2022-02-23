#
# Copyright (C) 2021 The SparkOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common SparkOS stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit from mi439 device
$(call inherit-product, device/xiaomi/mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK := true
TARGET_USES_BLUR := true
TARGET_USES_AOSP_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

SPARK_OFFICIAL := false
USE_GAPPS := true
SPARK_VARIANT := RELEASE
SPARK_MAINTAINER := Anant_Goel

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olive
PRODUCT_NAME := spark_olive
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys"

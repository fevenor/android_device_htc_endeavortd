## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := endeavortd

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/endeavortd/device_endeavortd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := endeavortd
PRODUCT_NAME := cm_endeavortd
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One XT
PRODUCT_MANUFACTURER := htc

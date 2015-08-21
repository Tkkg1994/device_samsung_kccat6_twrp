# Release name
PRODUCT_RELEASE_NAME := kccat6

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kccat6/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kccat6
PRODUCT_NAME := omni_kccat6
PRODUCT_BRAND := samsung
PRODUCT_MODEL := kccat6
PRODUCT_MANUFACTURER := samsung

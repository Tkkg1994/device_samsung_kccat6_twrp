$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/kccat6/kccat6-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/kccat6/overlay

LOCAL_PATH := device/samsung/kccat6

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.recovery.qcom.rc \
    init.recovery.usb.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_kccat6
PRODUCT_BRAND := Samsung

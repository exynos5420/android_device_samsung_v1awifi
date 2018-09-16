# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from v1awifi device
$(call inherit-product, device/samsung/v1awifi/device.mk)

PRODUCT_NAME := full_v1awifi
PRODUCT_DEVICE := v1awifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-P900

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_v1awifi
PRODUCT_DEVICE := v1awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-P900 \
    PRODUCT_NAME=v1awifi \
    PRODUCT_DEVICE=v1awifi \
    PRIVATE_BUILD_DESC="samsung/v1awifixx/v1awifi:5.0.2/LRX22G/P900XXU0BOI1:user/release-keys" \
    TARGET_DEVICE=v1awifi

BUILD_FINGERPRINT := samsung/v1awifixx/v1awifi:5.0.2/LRX22G/P900XXU0BOI1:user/release-keys

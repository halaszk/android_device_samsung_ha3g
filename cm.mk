# Inherit device configuration
$(call inherit-product, device/samsung/ha3g/full_ha3g.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := ha3g
PRODUCT_DEVICE := ha3g
PRODUCT_NAME := cm_ha3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N900
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-N900 \
    PRODUCT_NAME=ha3gxx \
    PRODUCT_DEVICE=ha3g \
    TARGET_DEVICE=ha3g \
    BUILD_FINGERPRINT="samsung/ha3gxx/ha3g:4.4.2/KOT49H/N900XXUDNB2:user/release-keys" \
    PRIVATE_BUILD_DESC="ha3gxx-user 4.4.2 KOT49H N900XXUDNB2 release-keys"

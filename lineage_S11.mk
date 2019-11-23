# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from S11 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := leagoo
PRODUCT_DEVICE := S11
PRODUCT_MANUFACTURER := leagoo
PRODUCT_NAME := lineage_S11
PRODUCT_MODEL := S11

PRODUCT_GMS_CLIENTID_BASE := android-leagoo
TARGET_VENDOR := leagoo
TARGET_VENDOR_PRODUCT_NAME := S11
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_pd3s44_lg_l6205l-user 9 PPR1.180610.011 1565683908 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := LEAGOO/S11/S11:9/PPR1.180610.011/1565683908:user/release-keys

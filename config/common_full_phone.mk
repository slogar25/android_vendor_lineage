# Inherit mobile full common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mobile_full.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/lineage/config/telephony.mk)

# GMS
ifeq ($(WITH_GMS),true)
include vendor/gms/products/gms.mk
endif

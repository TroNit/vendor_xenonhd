# Inherit AOSP device configuration for jewel.
$(call inherit-product, device/htc/jewel/jewel.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Extra jewel overlay
PRODUCT_PACKAGE_OVERLAYS += device/htc/jewel/overlay

# Copy maguro specific prebuilt files jewel
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd



# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_jewel
PRODUCT_BRAND := htc
PRODUCT_DEVICE := jewel
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jewel BUILD_ID=JRO03C BUILD_FINGERPRINT="htc/jewel/jewel:4.1.1/JRO03C/147243.3:user/release-keys" PRIVATE_BUILD_DESC="3.16.651.3 CL147243 release-keys"


include vendor/gms/products/gms.mk
include vendor/rising/config/properties.mk
include vendor/rising/config/packages.mk
include vendor/rising/config/vars.mk
include vendor/rising/config/version.mk
include vendor/rising/audio/audio.mk
include vendor/rising/overlays/build.mk
include vendor/rising/prebuilts/prebuilts.mk

PRODUCT_SOONG_NAMESPACES += \
    vendor/rising/common

# File systems tools
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs

# Dexopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep

# Product Copy
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:$(TARGET_COPY_OUT_PRODUCT)/usr/keylayout/Vendor_045e_Product_0719.kl \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.sip.voip.xml

# Extracted APN's from Cheetah
PRODUCT_COPY_FILES += \
    vendor/rising/prebuilts/apn/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

PRODUCT_COPY_FILES += vendor/rising/prebuilts/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip

include vendor/addons/config.mk
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


ifeq ($(TARGET_SUPPORTS_64_BIT_APPS),true)
PRODUCT_PACKAGES += \
    FaceUnlock

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.face.sense_service=true

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
    
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/etc/default-permissions/default_permissions_co.aospa.sense.xml \
    system/etc/permissions/android.hardware.biometrics.face.xml \
    system/etc/permissions/privapp_whitelist_co.aospa.sense.xml \
    system/etc/sysconfig/hiddenapi-whitelist-co.aospa.sense.xml \
    system/lib64/libFaceDetectCA.so \
    system/lib64/libMegviiUnlock-jni-1.2.so \
    system/lib64/libMegviiUnlock.so \
    system/lib64/libmegface.so \
    system/priv-app/FaceUnlock/FaceUnlock.apk

endif

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

PRODUCT_SOONG_NAMESPACES += \
    vendor/rising/packages

# /system_ext packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    androidx.window.sidecar

PRODUCT_PACKAGES += \
    SystemUIGoogle \
    SettingsGoogle \
    Backgrounds \
    GameSpace \
    Updater

ifneq ($(WITH_GMS),true)
PRODUCT_PACKAGES += \
    LatinIME
endif

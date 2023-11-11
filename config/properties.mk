PRODUCT_SOONG_NAMESPACES += \
    vendor/rising/properties

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# properties
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.extensions.enabled=true

PRODUCT_PRODUCT_PROPERTIES += \
    persist.rcs.supported=1 \
    ro.opa.eligible_device=true \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms \
    ro.product.locale=en-US \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.product.needs_model_edit=false \
    ro.support_one_handed_mode=true \
    persist.sys.storage_picker_enabled=true \
    debug.photos.p_editr.eraser=1 \
    debug.photos.force_pixel_eol=1 \
    debug.photos.eraser_camo=1 \
    debug.photos.eraser_suggestion=1 \
    ro.support_hide_display_cutout=true

# misc properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false \
    arm64.memtag.process.system_server=off \
    persist.sys.powerhal.interaction.max=64 \
    persist.sys.powerhal.interaction.max_default=64 \
    persist.sys.powerhal.interaction.max_boost=500

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed \
    persist.sys.strictmode.disable=true

# Blurs
ifeq ($(TARGET_ENABLE_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

# Freeform
TARGET_DEVICE_IS_TABLET ?= false
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.debug.desktop_mode=false
ifeq ($(TARGET_DEVICE_IS_TABLET), true)
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.debug.desktop_mode.default_width=840 \
    persist.wm.debug.desktop_mode.default_height=630
else
PRODUCT_PRODUCT_PROPERTIES += \
    persist.wm.debug.desktop_mode.default_width=230 \
    persist.wm.debug.desktop_mode.default_height=360
endif

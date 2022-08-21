# Additional props
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.google.ime.theme_id=5 \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    persist.sys.disable_rescue=true \
    ro.opa.eligible_device=true

# Setupwizard
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.day_night_mode_enabled=true \
    setupwizard.feature.lifecycle_refactoring=true \
    setupwizard.feature.notification_refactoring=true \
    setupwizard.feature.portal_notification=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_pixel_tos=true \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.theme=glif_v3_light

# Custom security patch
CUSTOM_SECURITY_PATCH := 2022-08-05

# Rice properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.rice.maintainer=$(RICE_MAINTAINER) \
    ro.rice.code=$(RICE_CODE) \
    ro.rice.packagetype=$(PACKAGE_BUILD_TYPE) \
    ro.rice.releasetype=$(RICE_BUILD_TYPE) \
    ro.rice.version?=$(RICE_VERSION) \
    ro.rice.chipset?=$(RICE_CHIPSET) \
    ro.rice.build.version=$(LINEAGE_VERSION) \
    ro.rice.display.version?=$(LINEAGE_DISPLAY_VERSION) \
    ro.rice.platform_release_codename=$(RICE_FLAVOR) \
    ro.rice.build_security_patch=$(CUSTOM_SECURITY_PATCH) \
    ro.ricelegal.url=https://www.manginasal.com/

# Disable iorapd
PRODUCT_PRODUCT_PROPERTIES += \
    ro.iorapd.enable=false

# HWUI
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.renderengine.backend?=skiaglthreaded \
    persist.sys.hwui.renderer?=skiagl \
    persist.sys.renderthread.skia.reduceopstasksplitting?=true

# perf memory optimizations
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.fw.bg_apps_limit?=60

# Gboard
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.kb_pad_port_b?=1

# Gboard side padding (OOS)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.kb_pad_port_l?=7 \
    ro.com.google.ime.kb_pad_port_r?=7 \
    ro.com.google.ime.kb_pad_land_l?=14 \
    ro.com.google.ime.kb_pad_land_r?=14

# Disable touch video heatmap to reduce latency, motion jitter, and CPU usage
# on supported devices with Deep Press input classifier HALs and models
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false

# Blurs
ifeq ($(TARGET_ENABLE_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1 \
    ro.launcher.blur.appLaunch=0
endif

# Disable async MTE on system_server
PRODUCT_PRODUCT_PROPERTIES += \
    arm64.memtag.process.system_server=off

# Enable dex2oat64 to do dexopt
PRODUCT_PRODUCT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true

TARGET_BUILD_GRAPHENEOS_CAMERA ?= true
ifeq ($(strip $(TARGET_BUILD_GRAPHENEOS_CAMERA)),true)
PRODUCT_PACKAGES += \
    GrapheneCamera
endif

# Bootanimation
ifeq ($(SUSHI_BOOTANIMATION),720)
# Sushi Bootanimation 720 by saavedra3
PRODUCT_COPY_FILES += vendor/lineage/prebuilt/common/media/sushi_bootanimation_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(SUSHI_BOOTANIMATION),1080)
# Sushi Bootanimation 1080 by saavedra3
PRODUCT_COPY_FILES += vendor/lineage/prebuilt/common/media/sushi_bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(SUSHI_BOOTANIMATION),1440)
# Sushi Bootanimation 1440 by saavedra3
PRODUCT_COPY_FILES += vendor/lineage/prebuilt/common/media/sushi_bootanimation_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else
PRODUCT_COPY_FILES += vendor/lineage/prebuilt/common/media/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif

# Extra packages
PRODUCT_PACKAGES += \
    GameSpace \
    SimIcons \
    RepainterServicePriv \
    OmniJaws \
    OPWidget

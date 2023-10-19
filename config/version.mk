# RisingOS properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.rising.maintainer=$(RISING_MAINTAINER) \
    ro.rising.code=$(RISING_CODENAME) \
    ro.rising.packagetype=$(RISING_PACKAGE_TYPE) \
    ro.rising.releasetype=$(RISING_BUILDTYPE) \
    ro.rising.version?=$(RISING_VERSION) \
    ro.rising.build.version=$(RISING_BUILD_VERSION) \
    ro.rising.display.version?=$(RISING_DISPLAY_VERSION) \
    ro.rising.platform_release_codename=$(RISING_FLAVOR) \
    ro.rising.device=$(TARGET_PRODUCT) \
    ro.rising.chipset?=$(RISING_CHIPSET) \
    ro.rising.storage?=$(RISING_STORAGE) \
    ro.rising.ram?=$(RISING_RAM) \
    ro.rising.battery?=$(RISING_BATTERY) \
    ro.rising.display_resolution?=$(RISING_DISPLAY)

# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# risingOS System Props
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.rising.version=$(RISING_VERSION) \
    ro.rising.releasetype=$(RISING_BUILDTYPE) \
    ro.rising.build.version=$(RISING_BUILD_VERSION) \
    ro.rising.display.version=$(RISING_DISPLAY_VERSION)

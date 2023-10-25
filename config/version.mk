# (C) 2023 RisingOS

# RisingOS versioning

RISING_FLAVOR := UDC
RISING_VERSION := 0
RISING_CODENAME := 0
RISING_RELEASE_TYPE := BETA
RISING_CODE := $(RISING_VERSION)

RISING_BUILD_DATE := $(shell date -u +%Y%m%d)

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)
MAINTAINER_LIST = $(shell cat vendor/risingOTA/risingOS.maintainers)
DEVICE_LIST = $(shell cat vendor/risingOTA/risingOS.devices)

ifeq ($(filter $(CURRENT_DEVICE), $(DEVICE_LIST)), $(CURRENT_DEVICE))
   ifeq ($(filter $(RISING_MAINTAINER), $(MAINTAINER_LIST)), $(RISING_MAINTAINER))
      RISING_BUILDTYPE := OFFICIAL
  else 
     # the builder is overriding official flag on purpose
     ifeq ($(RISING_BUILDTYPE), OFFICIAL)
       $(error **********************************************************)
       $(error *     A violation has been detected, aborting build      *)
       $(error **********************************************************)
       RISING_BUILDTYPE := UNOFFICIAL
     else 
       $(warning **********************************************************************)
       $(warning *   There is already an official maintainer for $(CURRENT_DEVICE)    *)
       $(warning *              Setting build type to UNOFFICIAL                      *)
       $(warning *    Please contact current official maintainer before distributing  *)
       $(warning *              the current build to the community.                   *)
       $(warning **********************************************************************)
       RISING_BUILDTYPE := UNOFFICIAL
     endif
  endif
else
   ifeq ($(RISING_BUILDTYPE), OFFICIAL)
     $(error **********************************************************)
     $(error *     A violation has been detected, aborting build      *)
     $(error **********************************************************)
   endif
  RISING_BUILDTYPE := COMMUNITY
endif

ifeq ($(WITH_GMS), true)
	ifeq ($(TARGET_CORE_GMS), true)
    	RISING_PACKAGE_TYPE ?= CORE
	else 
    	RISING_PACKAGE_TYPE ?= GAPPS
	endif
else
    RISING_PACKAGE_TYPE ?= VANILLA
endif

# Build version
RISING_BUILD_VERSION := $(RISING_VERSION)-$(RISING_RELEASE_TYPE)-$(RISING_BUILD_DATE)-$(RISING_PACKAGE_TYPE)-$(RISING_BUILDTYPE)-$(CURRENT_DEVICE)

# Display version
RISING_DISPLAY_VERSION := $(RISING_VERSION)-$(RISING_RELEASE_TYPE)-$(RISING_PACKAGE_TYPE)-$(RISING_BUILDTYPE)-$(CURRENT_DEVICE)

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

include vendor/rising/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/rising/config/BoardConfigQcom.mk
endif

include vendor/rising/config/BoardConfigSoong.mk

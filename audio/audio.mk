#
# Copyright (C) 2023 The risingOS Android Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_SOONG_NAMESPACES += \
    vendor/rising/audio

AUDIO_SOURCE_DIR := vendor/rising/audio
AUDIO_DEST_DIR := $(TARGET_COPY_OUT_PRODUCT)/media/audio

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(AUDIO_SOURCE_DIR)/alarms,$(AUDIO_DEST_DIR)/alarms) \
    $(call find-copy-subdir-files,*,$(AUDIO_SOURCE_DIR)/notifications,$(AUDIO_DEST_DIR)/notifications) \
    $(call find-copy-subdir-files,*,$(AUDIO_SOURCE_DIR)/ringtones,$(AUDIO_DEST_DIR)/ringtones) \
    $(call find-copy-subdir-files,*,$(AUDIO_SOURCE_DIR)/ui,$(AUDIO_DEST_DIR)/ui)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=23_echo_of_fate.ogg \
    ro.config.notification_sound=21_oneplus.ogg \
    ro.config.alarm_alert=11_isekai.ogg


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

PRODUCT_COPY_FILES += \
    vendor/rising/audio/alarms/01_trad.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/01_trad.ogg \
    vendor/rising/audio/alarms/02_crab.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/02_crab.ogg \
    vendor/rising/audio/alarms/03_repeater.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/03_repeater.ogg \
    vendor/rising/audio/alarms/04_pace.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/04_pace.ogg \
    vendor/rising/audio/alarms/05_arp.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/05_arp.ogg \
    vendor/rising/audio/alarms/06_reflect.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/06_reflect.ogg \
    vendor/rising/audio/alarms/07_fidget.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/07_fidget.ogg \
    vendor/rising/audio/alarms/08_saw.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/08_saw.ogg \
    vendor/rising/audio/alarms/09_grains.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/09_grains.ogg \
    vendor/rising/audio/alarms/10_shake.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/10_shake.ogg \
    vendor/rising/audio/notifications/01_oi!.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/01_oi!.ogg \
    vendor/rising/audio/notifications/02_swanny.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/02_swanny.ogg \
    vendor/rising/audio/notifications/03_doub.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/03_doub.ogg \
    vendor/rising/audio/notifications/04_hum.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/04_hum.ogg \
    vendor/rising/audio/notifications/05_flap.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/05_flap.ogg \
    vendor/rising/audio/notifications/06_sharp.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/06_sharp.ogg \
    vendor/rising/audio/notifications/07_cuckoo.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/07_cuckoo.ogg \
    vendor/rising/audio/notifications/08_rude.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/08_rude.ogg \
    vendor/rising/audio/notifications/09_croak.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/09_croak.ogg \
    vendor/rising/audio/notifications/10_lonba.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/10_lonba.ogg \
    vendor/rising/audio/notifications/11_bulb_one.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/11_bulb_one.ogg \
    vendor/rising/audio/notifications/12_guiro.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/12_guiro.ogg \
    vendor/rising/audio/notifications/13_beak.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/13_beak.ogg \
    vendor/rising/audio/notifications/14_nope.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/14_nope.ogg \
    vendor/rising/audio/notifications/15_zip.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/15_zip.ogg \
    vendor/rising/audio/notifications/16_gargle.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/16_gargle.ogg \
    vendor/rising/audio/notifications/17_cough.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/17_cough.ogg \
    vendor/rising/audio/notifications/18_pep.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/18_pep.ogg \
    vendor/rising/audio/notifications/19_woo.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/19_woo.ogg \
    vendor/rising/audio/notifications/20_yeh.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/20_yeh.ogg \
    vendor/rising/audio/notifications/21_oneplus.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/21_oneplus.ogg \
    vendor/rising/audio/ringtones/01_crossing.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/01_crossing.ogg \
    vendor/rising/audio/ringtones/02_ripple.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/02_ripple.ogg \
    vendor/rising/audio/ringtones/03_pulse.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/03_pulse.ogg \
    vendor/rising/audio/ringtones/04_wings.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/04_wings.ogg \
    vendor/rising/audio/ringtones/05_dolphin.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/05_dolphin.ogg \
    vendor/rising/audio/ringtones/06_anna.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/06_anna.ogg \
    vendor/rising/audio/ringtones/07_sticks.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/07_sticks.ogg \
    vendor/rising/audio/ringtones/08_wizard.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/08_wizard.ogg \
    vendor/rising/audio/ringtones/09_hammer.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/09_hammer.ogg \
    vendor/rising/audio/ringtones/10_clwb.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/10_clwb.ogg \
    vendor/rising/audio/ringtones/11_pneumatic.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/11_pneumatic.ogg \
    vendor/rising/audio/ringtones/12_abra.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/12_abra.ogg \
    vendor/rising/audio/ringtones/13_plot.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/13_plot.ogg \
    vendor/rising/audio/ringtones/14_beetle.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/14_beetle.ogg \
    vendor/rising/audio/ringtones/15_squirrels.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/15_squirrels.ogg \
    vendor/rising/audio/ringtones/16_radiate.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/16_radiate.ogg \
    vendor/rising/audio/ringtones/17_tennis.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/17_tennis.ogg \
    vendor/rising/audio/ringtones/18_coded.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/18_coded.ogg \
    vendor/rising/audio/ringtones/19_woo_yeh.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/19_woo_yeh.ogg \
    vendor/rising/audio/ringtones/20_latency.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/20_latency.ogg \
    vendor/rising/audio/ringtones/21_Lychee.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/21_Lychee.ogg \
    vendor/rising/audio/ui/camera_click.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/camera_click.ogg \
    vendor/rising/audio/ui/camera_focus.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/camera_focus.ogg \
    vendor/rising/audio/ui/ChargingReverse.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/ChargingReverse.ogg \
    vendor/rising/audio/ui/ChargingStarted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/ChargingStarted.ogg \
    vendor/rising/audio/ui/Dock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Dock.ogg \
    vendor/rising/audio/ui/Effect_Tick.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Effect_Tick.ogg \
    vendor/rising/audio/ui/InCallNotification.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/InCallNotification.ogg \
    vendor/rising/audio/ui/KeypressDelete.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressDelete.ogg \
    vendor/rising/audio/ui/KeypressInvalid.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressInvalid.ogg \
    vendor/rising/audio/ui/KeypressReturn.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressReturn.ogg \
    vendor/rising/audio/ui/KeypressSpacebar.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressSpacebar.ogg \
    vendor/rising/audio/ui/KeypressStandard.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressStandard.ogg \
    vendor/rising/audio/ui/Lock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Lock.ogg \
    vendor/rising/audio/ui/LowBattery.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/LowBattery.ogg \
    vendor/rising/audio/ui/NFCFailure.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCFailure.ogg \
    vendor/rising/audio/ui/NFCInitiated.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCInitiated.ogg \
    vendor/rising/audio/ui/NFCSuccess.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCSuccess.ogg \
    vendor/rising/audio/ui/NFCTransferComplete.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCTransferComplete.ogg \
    vendor/rising/audio/ui/NFCTransferInitiated.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCTransferInitiated.ogg \
    vendor/rising/audio/ui/screenshot.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/screenshot.ogg \
    vendor/rising/audio/ui/Trusted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Trusted.ogg \
    vendor/rising/audio/ui/Undock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Undock.ogg \
    vendor/rising/audio/ui/Unlock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Unlock.ogg \
    vendor/rising/audio/ui/VideoRecord.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/VideoRecord.ogg \
    vendor/rising/audio/ui/VideoStop.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/VideoStop.ogg \
    vendor/rising/audio/ui/WirelessChargingStarted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/WirelessChargingStarted.ogg
    
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=21_Lychee.ogg \
    ro.config.notification_sound=21_oneplus.ogg
    

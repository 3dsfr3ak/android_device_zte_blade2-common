#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/zte/msm7x27-common/common.mk)
$(call inherit-product, vendor/zte/blade2/blade2-vendor.mk)
$(call inherit-product-if-exists, device/zte/blade2-common/packages.mk)

# Packages
PRODUCT_PACKAGES += \
        CrescentParts

# Files
PRODUCT_COPY_FILES += \
        device/zte/blade2-common/ramdisk/init.blade2.rc:root/init.blade2.rc \
        device/zte/blade2-common/ramdisk/init.blade2.usb.rc:root/init.blade2.usb.rc \
        device/zte/blade2-common/ramdisk/ueventd.blade2.rc:root/ueventd.blade2.rc \
        device/zte/blade2-common/prebuilt/qwerty.kl:system/usr/keylayout/qwerty.kl \
        device/zte/blade2-common/prebuilt/blade2_keypad.kl:system/usr/keylayout/blade2_keypad.kl \
        device/zte/blade2-common/prebuilt/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
        device/zte/blade2-common/prebuilt/synaptics-rmi4-ts.kl:system/usr/keylayout/synaptics-rmi4-ts.kl \
        device/zte/blade2-common/prebuilt/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
        device/zte/blade2-common/prebuilt/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
        device/zte/blade2-common/prebuilt/synaptics-rmi4-ts.idc:system/usr/idc/synaptics-rmi4-ts.idc \
        device/zte/blade2-common/prebuilt/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
        device/zte/blade2-common/prebuilt/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
        device/zte/blade2-common/prebuilt/Generic.kl:system/usr/keylayout/Generic.kl \
        device/zte/blade2-common/prebuilt/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
        device/zte/blade2-common/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

# Wi-Fi
PRODUCT_COPY_FILES += \
        device/zte/blade2-common/prebuilt/dhd.ko:system/lib/modules/dhd.ko \
        device/zte/blade2-common/firmware/fw_4330b1.bin:system/etc/fw_4330b1.bin \
        device/zte/blade2-common/firmware/fw_4330b2.bin:system/etc/fw_4330b2.bin \
        device/zte/blade2-common/firmware/fw_4330_b1_apsta.bin:system/etc/fw_4330_b1_apsta.bin \
        device/zte/blade2-common/firmware/fw_4330_b2_apsta.bin:system/etc/fw_4330_b2_apsta.bin \
        device/zte/blade2-common/firmware/nv_4330b1.txt:system/etc/nv_4330b1.txt \
        device/zte/blade2-common/firmware/nv_4330b1.txt:system/etc/nv_4330b2.txt \
        device/zte/blade2-common/init.wlanprop.sh:system/etc/init.wlanprop.sh

# Graphics
PRODUCT_COPY_FILES += \
        device/zte/blade2-common/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
        device/zte/blade2-common/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
        device/zte/blade2-common/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
        device/zte/blade2-common/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
        device/zte/blade2-common/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
        device/zte/blade2-common/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
        device/zte/blade2-common/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

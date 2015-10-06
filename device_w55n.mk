#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/w55n/overlay

PRODUCT_PACKAGES += Torch

# NFC packages
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    nfc_nci.pn54x.default \
    com.android.nfc_extras

NFCEE_ACCESS_PATH := device/lge/w55n/prebuilt/etc/nfcee_access.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.product.device=w55n \
    ro.product.model=LG-D280n \
    ro.nfc.port=I2C \
    persist.panel.orientation=0 \
    ro.sf.hwrotation=180 \
    camera2.portability.force_api=0

PRODUCT_COPY_FILES += \
    device/lge/w55n/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/w55n/prebuilt/etc/thermal-engine-8610.conf:system/etc/thermal-engine-8610.conf \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    device/lge/w55n/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lge/w55n/prebuilt/etc/nfc-nci.conf:system/etc/nfc-nci.conf \
    device/lge/w55n/prebuilt/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/lge/w55n/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    device/lge/w55n/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/lge/msm8610-common/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/w55n/fstab.msm8610:root/fstab.msm8610

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, vendor/lge/w5/w5-vendor.mk)

# Inherit from msm8610-common
$(call inherit-product, device/lge/msm8610-common/msm8610.mk)

# Copyright (C) 2013 ParanoidAndroid Project
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

# Check for target product

ifeq (venture_i9100g,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := venture_hdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/venture/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/venture/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Override AOSP build properties
PRODUCT_NAME := venture_i9100g
PRODUCT_DEVICE := i9100g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9100G
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/I9100GXXLSR:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K I9100GXXLSR release-keys"

endif
# Copyright (C) 2014 ParanoidAndroid Project
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

ifeq (venture_serrano3gxx,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := venture_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/venture/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/venture/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/serrano3gxx/full_serrano3gxx.mk)

# Override AOSP build properties
PRODUCT_NAME := venture_serrano3gxx
PRODUCT_DEVICE := serrano3gxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9190

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=serrano3gxx BUILD_FINGERPRINT="samsung/serrano3gxx/serrano3g:4.2.2/JDQ39/I9190XXUAMF7:user/release-keys" PRIVATE_BUILD_DESC="serrano3gxx-user 4.2.2 JDQ39 I9190XXUAMF7 release-keys"

endif
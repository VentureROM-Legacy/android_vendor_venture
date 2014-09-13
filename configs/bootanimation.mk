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


# Add Vnture bootanimation based on xxhdpi xhdpi hdpi tvdpi resolution


# Venture XXHDPI Devices
ifneq ($(filter venture_bacon venture_d800 venture_d801 venture_d802 venture_d803 venture_dlx venture_hlte venture_honami venture_find5 venture_find7 venture_find7u venture_i9500 venture_jflte venture_ls980 venture_m7 venture_m7spr venture_m7vzw venture_m8 venture_n1 venture_odin venture_sirius venture_vs980 venture_yuga,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/venture/prebuilt/bootanimation/1920x1080.zip:system/media/bootanimation.zip
endif

# Venture XHDPI Devices
ifneq ($(filter venture_amami venture_edison venture_maserasti venture_spyder venture_targa venture_umts_spyder venture_hikari venture_nozomi venture_tate venture_jem venture_jemlte venture_falcon venture_enrc2b venture_mint venture_melius3gxx venture_meliusltexx venture_evita venture_moto_msm8960 moto_msm8960_jbbl venture_moto_msm8960dt venture_d2lte venture_gee venture_geeb venture_hercules venture_i605 venture_i9300 venture_l900 venture_m4 venture_n7000 venture_n7100 venture_p880 venture_skyrocket pa_tf201 pa_togari pa_v500,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/venture/prebuilt/bootanimation/1280x720.zip:system/media/bootanimation.zip
endif

# Venture HDPI Devices
ifneq ($(filter venture_galaxysmtd venture_i9082 venture_i9100 venture_i9100g venture_p3100 venture_p3110 venture_serrano3gxx venture_serranoltexx venture_ville,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/venture/prebuilt/bootanimation/800x480.zip:system/media/bootanimation.zip
endif

# Venture TVDPI Devices
ifneq ($(filter venture_a510 venture_a700 venture_n5100 venture_n5110 venture_n5120,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/venture/prebuilt/bootanimation/1920x1200.zip:system/media/bootanimation.zip
endif
#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := X6515

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from X6515 device
$(call inherit-product, device/infinix/X6515/device.mk)

# Inherit some common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X6515
PRODUCT_NAME := twrp_X6515
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6515
PRODUCT_MANUFACTURER := infinix


PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="vnd_x6515_h6127-user 12 SP1A.210812.016 399835 release-keys"

BUILD_FINGERPRINT := Infinix/X6515-KESF/Infinix-X6515:12/SP1A.210812.016/230809V120:user/release-keys

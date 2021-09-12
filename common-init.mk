# Copyright (C) 2014 The Android Open Source Project
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

# Common init scripts
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.mmi.charge_only.rc \
    init.mmi.chipset.rc \
    init.mmi.overlay.rc \
    init.mmi.touch.sh \
    init.mmi.rc \
    init.oem.fingerprint2.sh \
    init.oem.hw.sh \
    init.qcom.ipastart.sh \
    init.qcom.rc \
    init.qti.kernel.rc \
    init.qti.kernel.sh \
    init.target.rc \
    vendor_modprobe.sh

ifeq ($(PRODUCT_USES_PIXEL_USB_HAL),true)
PRODUCT_PACKAGES += \
    init.usb.rc
else
PRODUCT_PACKAGES += \
    init.mmi.usb.sh
endif

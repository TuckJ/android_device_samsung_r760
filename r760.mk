# Copyright (C) 2010 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/samsung/r760/overlay \
    device/samsung/galaxys2-common/overlay

# Misc	
PRODUCT_COPY_FILES += \
    device/samsung/r760/configs/apns-conf.xml:system/etc/apns-conf.xml

# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=4 \
    ro.cdma.home.operator.numeric=311220 \
    ro.cdma.home.operator.alpha=U.S Cellular \
    net.cdma.pppd.authtype=require-chap \
    net.cdma.pppd.user=user[SPACE]USCC \
    net.cdma.datalinkinterface=/dev/ttyCDMA0 \
    net.interfaces.defaultroute=cdma \
    net.cdma.ppp.interface=ppp0 \
    net.connectivity.type=CDMA1 \
    mobiledata.interfaces=ppp0 \
    ro.telephony.ril_class=SamsungCDMAv6RIL \
    ro.ril.samsung_cdma=true \
    ro.carrier=U.S Cellular	

$(call inherit-product, device/samsung/d710/d710.mk)
$(call inherit-product, device/samsung/galaxys2-common/common.mk)
$(call inherit-product-if-exists, vendor/samsung/galaxys2-common/common-vendor.mk)
$(call inherit-product-if-exists, vendor/samsung/d710/d710-vendor.mk)
$(call inherit-product, hardware/samsung/exynos4210.mk)

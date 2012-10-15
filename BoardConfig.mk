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


-include device/samsung/galaxys2-common/BoardCommonConfig.mk
-include device/samsung/d710/BoardConfig.mk

EXYNOS4210_ENHANCEMENTS := true

ifdef EXYNOS4210_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4210_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
endif

TARGET_BOARD_PLATFORM := exynos4
TARGET_SOC := exynos4210
TARGET_BOOTLOADER_BOARD_NAME := smdk4210
TARGET_BOARD_INFO_FILE := device/samsung/r760/board-info.txt

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/d710/recovery.rc

BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0

# Kernel Config
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4210
TARGET_KERNEL_CONFIG := cyanogenmod_d710_defconfig

BOARD_SUPPRESS_EMMC_WIPE := true

# Notification LED
BOARD_HAS_LED_NOTIF := true

# assert
TARGET_OTA_ASSERT_DEVICE := epic4gtouch,SPH-D710,d710,SCH-R760,r760

# Use the non-open-source parts, if they're present
-include vendor/samsung/galaxys2-common/BoardConfigVendor.mk
-include vendor/samsung/d710/BoardConfigVendor.mk
-include vendor/samsung/r760/BoardConfigVendor.mk

BOARD_CUSTOM_BOOTIMG_MK := device/samsung/r760/shbootimg.mk

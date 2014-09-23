# Copyright 2010 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := true

# inherit from the proprietary version
-include vendor/htc/endeavortd/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra

#custom init rc
TARGET_PROVIDES_INIT_RC := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := endeavortd

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/htc/endeavoru/config/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true

# Partitions Info
#cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p5: 00800000 00001000 "recovery"
#mmcblk0p4: 00800000 00001000 "boot"
#mmcblk0p12: 50000000 00001000 "system"
#mmcblk0p13: 14000000 00001000 "cache"
#mmcblk0p17: 00200000 00001000 "misc"
#mmcblk0p1: 00600000 00001000 "wlan"
#mmcblk0p2: 00200000 00001000 "WDM"
#mmcblk0p20: 00200000 00001000 "pdata"
#mmcblk0p3: 00600000 00001000 "radiocab"
#mmcblk0p14: 650000000 00001000 "internalsd"
#mmcblk0p15: 89400000 00001000 "userdata"
#mmcblk0p19: 01600000 00001000 "devlog"
#mmcblk0p16: 00200000 00001000 "extra"
#mmcblk0p18: 00600000 00001000 "local"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x50000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x89400000
BOARD_FLASH_BLOCK_SIZE := 4096

# Kernel
TARGET_PREBUILT_KERNEL := device/htc/endeavortd/kernel

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/endeavortd/bluetooth

# Recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/endeavoru/prebuilt/recovery_kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/endeavortd/kernel
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_UMS_LUNFILE := "/sys/devices/platform/fsl-tegra-udc/gadget/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true

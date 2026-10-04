#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := vendor/google/trogdor

# Namespaces for Soong prebuilts
PRODUCT_SOONG_NAMESPACES += \
    vendor/google/trogdor

# Mesa3D Freedreno / Turnip / GLES / EGL / Vulkan Prebuilts
ifeq ($(TARGET_BUILD_MESA), true)
PRODUCT_PACKAGES += \
    libEGL_mesa \
    libGLESv1_CM_mesa \
    libGLESv2_mesa \
    libgallium_dri \
    libgbm_mesa \
    dri_gbm \
    vulkan.freedreno \
    libhardware.vendor
endif

# Adreno 630 GPU Firmware (early boot ramdisk)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/a630_sqe.fw:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/qcom/a630_sqe.fw \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/a630_gmu.bin:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/qcom/a630_gmu.bin

# Qualcomm SC7180 Wi-Fi, Bluetooth, and Venus firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/board-2.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/board-2.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/firmware-5.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/firmware-5.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/ath10k/WCN3990/hw1.0/wlanmdsp.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/ath10k/WCN3990/hw1.0/wlanmdsp.mbn \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/crbtfw32.tlv:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/crbtfw32.tlv \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qca/crnv32u.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/qca/crnv32u.bin \
    $(LOCAL_PATH)/proprietary/vendor/firmware/qcom/venus-5.4/venus.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-5.4/venus.mbn

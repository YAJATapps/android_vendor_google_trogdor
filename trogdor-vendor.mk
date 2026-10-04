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

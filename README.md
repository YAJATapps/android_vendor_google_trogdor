# Proprietary Vendor Blobs for Qualcomm SC7180 (Google Trogdor)

This repository contains prebuilt proprietary firmware blobs and graphics acceleration libraries required for LineageOS 23.2 on Qualcomm SC7180 (Google Trogdor / `trogdor`) devices.

---

## 1. Qualcomm Firmware Blobs
- **Source**: Adreno 630 GPU firmware (as previously kept in `device/google/trogdor/firmware/`).
- **Components**:
  - **Adreno GPU (early boot)**:
    - `proprietary/vendor/firmware/qcom/a630_sqe.fw` -> `/lib/firmware/qcom/a630_sqe.fw` (ramdisk)
    - `proprietary/vendor/firmware/qcom/a630_gmu.bin` -> `/lib/firmware/qcom/a630_gmu.bin` (ramdisk)
- **Note**: Installed to the ramdisk only (`$(TARGET_COPY_OUT_RAMDISK)`), via `PRODUCT_COPY_FILES` in `trogdor-vendor.mk`.

---

## 2. Mesa3D Freedreno / Turnip (Adreno) Graphics Acceleration Prebuilts
- **Version**: Mesa 26.2.2 (Release)
- **Source**: Built out-of-tree for Android (aarch64, NDK).
- **Build**: Only included when `TARGET_BUILD_MESA := true`.
- **Components**:
  - `libgallium_dri.so`: Gallium Freedreno driver (`/vendor/lib64/libgallium_dri.so`)
  - `libgbm_mesa.so` / `dri_gbm.so`: Mesa GBM buffer allocation backends (`/vendor/lib64/libgbm_mesa.so`, `/vendor/lib64/dri_gbm.so`)
  - `libEGL.so`, `libGLESv1_CM.so`, `libGLESv2.so`: OpenGL ES drivers (`/vendor/lib64/egl/libEGL_mesa.so`, `libGLESv1_CM_mesa.so`, `libGLESv2_mesa.so`)
  - `vulkan.freedreno.so`: Turnip Vulkan driver (`/vendor/lib64/hw/vulkan.freedreno.so`)
- **Definitions**: `proprietary/mesa/Android.bp`

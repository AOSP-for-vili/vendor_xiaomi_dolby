DOLBY_BLOBS_PATH := vendor/xiaomi/dolby/sweet

PRODUCT_SOONG_NAMESPACES += \
    $(DOLBY_BLOBS_PATH)/products

PRODUCT_COPY_FILES += \
    prebuilts/vndk/v30/arm64/arch-arm-armv8-a/shared/vndk-core/libstagefright_omx.so:$(TARGET_COPY_OUT_VENDOR)/lib/vndk/libstagefright_omx.so \
    prebuilts/vndk/v30/arm64/arch-arm-armv8-a/shared/vndk-core/libstagefright_omx_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/vndk/libstagefright_omx_utils.so \
    prebuilts/vndk/v30/arm64/arch-arm-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/vndk/libstagefright_foundation.so \
    prebuilts/vndk/v30/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_omx.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vndk/libstagefright_omx.so \
    prebuilts/vndk/v30/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_omx_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vndk/libstagefright_omx_utils.so \
    prebuilts/vndk/v30/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vndk/libstagefright_foundation.so

PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=false \
    persist.vendor.audio_fx.current=dolby \
    ro.audio.monitorRotation=true

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.df.effect.conflict=1 \
    ro.vendor.audio.dolby.dax.support=true \
    persist.vendor.audio.delta.refresh=true \
    ro.vendor.audio.dolby.surround.enable=true

$(call inherit-product, $(DOLBY_BLOBS_PATH)/common/common-vendor.mk)

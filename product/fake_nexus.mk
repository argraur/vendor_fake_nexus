PRODUCT_PACKAGE_OVERLAYS := \
	vendor/fake_nexus/product/overlay \

PRODUCT_PROPERTY_OVERRIDES := \
	ro.config.ringtone=Titania.ogg \
	ro.config.notification_sound=Tethys.ogg \
	ro.config.alarm_alert=Oxygen.ogg \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.android.dataroaming=false \
	ro.com.android.mobiledata=false \


PRODUCT_PACKAGES := \
	NexusLauncher \

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	ro.adb.secure=1 \

endif

$(call inherit-product, vendor/google/product/gms.mk)
$(call inherit-product, vendor/google/product/gms-nexus.mk)
$(call inherit-product, vendor/google/product/mediaeffect.mk)
$(call inherit-product, vendor/google/product/bootanimation.mk)
$(call inherit-product, vendor/fake_nexus/data/AudioPackage.mk)

PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/fake_nexus/build/security/release-keys

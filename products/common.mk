# Generic product
PRODUCT_NAME := xenonhd
PRODUCT_BRAND := xenonhd
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/common

PRODUCT_PACKAGES += \
    AOKPTorch \
    Apollo \
    audio_effects.conf \
    BluetoothExt \
    CMFileManager \
    DeskClock \
    Dialer \
    DSPManager \
    Focal \
    LatinImeDictionaryPack \
    Launcher3 \
    libcyanogen-dsp \
    libemoji \
    libscreenrecorder \
    OmniSwitch \
    OTAUpdateCenter \
    OmniTorch \
    RingsExtended \
    ROMSettings \
    ROMStats \
    ScreenRecorder \
    SoundRecorder \
    Torch \
    VoicePlus \
    XenonWallpapers

# superuser
SUPERUSER_EMBEDDED := true

PRODUCT_PACKAGES += \
    Superuser \
    su

PRODUCT_COPY_FILES += \
    external/koush/Superuser/init.superuser.rc:root/init.superuser.rc

#extras	
PRODUCT_PACKAGES += \
	openvpn \
	e2fsck \
	mke2fs \
	tune2fs \
	bash \
	nano \
	libssh \
	ssh \
	sshd \
	sshd-config \
	ssh-keygen \
	sftp \
	scp \
	start-ssh

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    wifi.supplicant_scan_interval=180 \
    ro.ril.disable.power.collapse=1 \
    pm.sleep_mode=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Enable ADB authentication and root
ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    persist.sys.root_access=3
endif

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/dictionaries

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/xenonhd/proprietary/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/xenonhd/proprietary/common/etc/liberty.cfg:system/etc
        
# init.d support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/xenonhd/proprietary/common/etc/init.local.rc:root/init.xenonhd.rc \
    vendor/xenonhd/proprietary/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/xenonhd/proprietary/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/xenonhd/proprietary/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/xenonhd/proprietary/common/etc/init.d/97fixgestures:system/etc/init.d/97fixgestures \
    vendor/xenonhd/proprietary/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/xenonhd/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/xenonhd/proprietary/common/bin/sysinit:system/bin/sysinit

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Cron schedual 
#PRODUCT_COPY_FILES += \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
#    vendor/xenonhd/proprietary/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_ca
    
# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/xenonhd/proprietary/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown
    
# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/xenonhd/proprietary/common/bin/compcache:system/bin/compcache \
    vendor/xenonhd/proprietary/common/bin/handle_compcache:system/bin/handle_compcache
    
# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/xbin/backup:system/xbin/backup \
    vendor/xenonhd/proprietary/common/xbin/btool:system/xbin/btool \
    vendor/xenonhd/proprietary/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/xenonhd/proprietary/common/xbin/gdb:system/xbin/gdb \
    vendor/xenonhd/proprietary/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/xenonhd/proprietary/common/xbin/market_history:system/xbin/market_history \
    vendor/xenonhd/proprietary/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/xenonhd/proprietary/common/xbin/run_backup:system/xbin/run_backup \
    vendor/xenonhd/proprietary/common/xbin/run_restore:system/xbin/run_restore \
    vendor/xenonhd/proprietary/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/xenonhd/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/xenonhd/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/xenonhd/proprietary/common/xbin/zip:system/xbin/zip \
    vendor/xenonhd/proprietary/common/xbin/zipalign:system/xbin/zipalign

#Declare your device here for APNs    
ifneq ($(filter xenonhd_crespo xenonhd_endeavoru xenonhd_maguro xenonhd_tilapia xenonhd_mako xenonhd_m7tmo xenonhd_d2lte xenonhd_jflte xenonhd_galaxysmtd xenonhd_i9100 xenonhd_i9100g xenonhd_i9300 xenonhd_n7000 xenonhd_n7100 xenonhd_t0lte xenonhd_t0lteatt xenonhd_t0ltetmo ,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
	vendor/xenonhd/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml
endif

ifneq ($(filter xenonhd_d2vzw xenonhd_jfltevzw xenonhd_d2usc xenonhd_xt926 xenonhd_i605 xenonhd_l900 xenonhd_r950 xenonhd_jewel ,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
	vendor/xenonhd/proprietary/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml
endif

# T-Mobile theme engine
PRODUCT_PACKAGES += \
	   ThemeManager \
           ThemeChooser \
           com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/xenonhd/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

PRODUCT_COPY_FILES += \
       vendor/xenonhd/proprietary/common/app/MyBackupRoot.apk:system/app/MyBackupRoot.apk

# Dashclock 
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/app/DashClock.apk:system/app/DashClock.apk

# AdAway
PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/common/app/org.adaway.apk:system/app/org.adaway.apk


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1

#!/sbin/sh

cp -rf /tmp/install/bin/vendor/etc/ /vendor/
rm -rf /vendor/overlay/
cp -rf /tmp/install/bin/vendor/overlay/ /vendor/


# permissions

chmod 644 /vendor/etc/audio/audio_policy_configuration.xml
chmod 644 /vendor/etc/fstab.qcom
chmod 644 /vendor/etc/media_profiles_V1_0.xml
chmod 644 /vendor/overlay/framework-res_trzpro.apk
chmod 755 /vendor/etc/init/hw/init.qcom.rc

#!/sbin/sh

cp -rf /tmp/install/bin/vendor/etc/ /vendor/

# permissions

chmod 644 /vendor/etc/audio/audio_policy_configuration.xml
chmod 644 /vendor/etc/fstab.qcom
chmod 644 /vendor/etc/media_profiles_V1_0.xml


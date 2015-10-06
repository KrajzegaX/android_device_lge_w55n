CyanogenMod 12.1 device configuration for LG L65 D280n

How to build:
-------------

Initializing a Build Environment:

    https://source.android.com/source/initializing.html

Initialize repo:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-12.1

    curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/Bi-Turbo/android_local_manifest/cm-12.1/local_manifest.xml
    repo sync
    vendor/cm/get-prebuilts

Compile:

    . build/envsetup.sh
    brunch cm_w55n-userdebug

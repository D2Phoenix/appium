#!/bin/bash
set +e
wget -P /tmp http://dl.google.com/android/adt/adt-bundle-mac-x86_64-20131030.zip
mkdir -p $HOME/tools/android
pushd $HOME/tools/android 
unzip -q /tmp/adt-bundle-mac-x86_64-20131030.zip
popd
export ANDROID_ROOT=$HOME/tools/android/adt-bundle-mac-x86_64-20131030
export ANDROID_HOME=$ANDROID_ROOT/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
alias android_update=android update sdk --no-ui -a
echo yes | android_update --filter platform-tools 
echo yes | android_update --filter android-18 
echo yes | android_update --filter extra-android-support
echo yes | android_update --filter extra-android-m2repository

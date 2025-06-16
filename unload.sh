#!/usr/bin/env sh
# Re-enables turbo boost by disabling the kext that enabled it

echo "Checking if Turbo Boost is enabled..."
result=`kextstat | grep -c com.rugarciap.DisableTurboBoost`
if [ $result -eq 0 ]
then 
    echo "No kext to disable."
    echo "Turbo Boost is still enabled."
    exit 0
fi
echo "[Turbo Boost is currently enabled]"
echo 
echo "Unloading kext and disabling now..."
#sudo /sbin/kextunload -v /Applications/Turbo\ Boost\ Switcher.app/Contents/Resources/DisableTurboBoost.64bits.kext
sudo /sbin/kextunload -v /Applications/tbswitcher_resources/DisableTurboBoost.64bits.kext

echo "Turbo Boost Enabled."

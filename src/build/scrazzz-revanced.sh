#!/bin/bash
# scrazzz build
source ./src/build/utils.sh
#################################################
# Download requirements
dl_gh "revanced-cli" "revanced" "latest"
dl_gh "my-revanced-patches" "scrazzz" "prerelease"
#################################################
# Patch Solid Explorer arm64-v8a:
get_patches_key "Solid-Explorer"
version="2.8.63"
get_apk "pl.solidexplorer2" "solid-explorer-arm64-v8a" "solid-explorer-beta" "neatbytes/solid-explorer-beta/solid-explorer-file-manager" "arm64-v8a"
patch "solid-explorer-arm64-v8a" "scrazzz"
# Patch Solid Explorer armeabi-v7a:
version="2.8.63"
get_patches_key "Solid-Explorer"
get_apk "pl.solidexplorer2" "solid-explorer-armeabi-v7a" "solid-explorer-beta" "neatbytes/solid-explorer-beta/solid-explorer-file-manager" "armeabi-v7a"
patch "solid-explorer-armeabi-v7a" "scrazzz"

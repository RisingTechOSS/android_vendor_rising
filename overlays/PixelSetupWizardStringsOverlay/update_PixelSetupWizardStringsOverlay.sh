#!/bin/bash
#
# Copyright (C) 2021-2023 The LineageOS Project
# Copyright (C) 2023 RisingOS
#
# SPDX-License-Identifier: Apache-2.0
#

DEBUG=0
if [ ${DEBUG} != 0 ]; then
    log="/dev/tty"
else
    log="/dev/null"
fi

if [ -z "${1}" ]; then
    echo "Usage: bash update_PixelSetupWizardStringsOverlay.sh /path/to/PixelSetupWizard.apk"
    exit
fi

if [ ! -f "${1}" ]; then
    echo "Can not find a file at '${1}'"
    exit
fi

# Create a temporary working directory
TMPDIR=$(mktemp -d)

apktool d ${1} -o "${TMPDIR}"/out > "${log}"

rm -rf ./res
for strings in $(find "${TMPDIR}"/out/ -name strings.xml); do
    target_path=./$(echo "${strings}" | sed "s|${TMPDIR}/out/||" | sed "s|/strings.xml||")
    if [ ! -d "${target_path}" ]; then
        mkdir -p "${target_path}"
    fi

    touch "${target_path}"/strings.xml
    echo '<?xml version="1.0" encoding="utf-8"?>' >> "${target_path}"/strings.xml
    echo '<resources>' >> "${target_path}"/strings.xml

    echo "    " $(cat "${strings}" | grep '<string name="air_gestures_opt_in_info_text">') >> $target_path/strings.xml
    echo "    " $(cat "${strings}" | grep '<string name="bc_welcome_message">') >> $target_path/strings.xml
    echo "    " $(cat "${strings}" | grep '<string name="deferred_setup_wizard_title">') >> $target_path/strings.xml
    echo "    " $(cat "${strings}" | grep '<string name="device_name">') >> $target_path/strings.xml
    echo "    " $(cat "${strings}" | grep '<string name="setup_wizard_title">') >> $target_path/strings.xml
    echo "    " $(cat "${strings}" | grep '<string name="smart_always_on_display_opt_in_info_text">') >> $target_path/strings.xml

    echo '</resources>' >> "${target_path}"/strings.xml

    sed -i "s|your Pixel|RisingOS|g" "${target_path}"/strings.xml &&
    sed -i "s|Pixel|RisingOS|g" "${target_path}"/strings.xml
done

# Clear the temporary working directory
rm -rf "${TMPDIR}"


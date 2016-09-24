# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
import common
import struct

"""Custom OTA commands for v1 and v2 devices"""

def FullOTA_InstallEnd(info):
	info.script.Mount("/system")
	info.script.AppendExtra('ifelse(is_substring("SM-T900", getprop("ro.product.model")) || is_substring("SM-T900", getprop("ro.product.device")) || is_substring("SM-T900", getprop("ro.build.product")) || is_substring("v2wifixx", getprop("ro.build.product")) || is_substring("v2wifixx", getprop("ro.product.device")) || is_substring("v2wifixx", getprop("ro.product.model")), run_program("/sbin/busybox", "cp", "/system/lib/hw/v2awifi.sensors.universal5420.so", "/system/lib/hw/sensors.universal5420.so"));')
	info.script.AppendExtra('set_metadata("/system/lib/hw/sensors.universal5420.so", "uid", 0, "gid", 0, "mode", 0644);')
	info.script.AppendExtra('delete_recursive("/system/lib/hw/v2awifi.sensors.universal5420.so");')
	info.script.Unmount("/system")

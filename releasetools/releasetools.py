import common
import struct

def FullOTA_PostValidate(info):
	info.script.AppendExtra(
		('package_extract_file("install/bin/seandroid.sh", "/tmp/seandroid.sh");\n'
		'set_metadata("/tmp/seandroid.sh", "uid", 0, "gid", 0, "mode", 0777);'))
	info.script.AppendExtra('assert(run_program("/tmp/seandroid.sh") == 0);')

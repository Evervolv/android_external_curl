LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

CURLX_ONES = \
	../lib/strtoofft.c \
	../lib/strdup.c \
	../lib/rawstr.c \
	../lib/nonblock.c

CURL_CFILES = \
	tool_binmode.c \
	tool_bname.c \
	tool_cb_dbg.c \
	tool_cb_hdr.c \
	tool_cb_prg.c \
	tool_cb_rea.c \
	tool_cb_see.c \
	tool_cb_wrt.c \
	tool_cfgable.c \
	tool_convert.c \
	tool_dirhie.c \
	tool_doswin.c \
	tool_easysrc.c \
	tool_formparse.c \
	tool_getparam.c \
	tool_getpass.c \
	tool_help.c \
	tool_helpers.c \
	tool_homedir.c \
	tool_hugehelp.c \
	tool_libinfo.c \
	tool_main.c \
	tool_metalink.c \
	tool_mfiles.c \
	tool_msgs.c \
	tool_operate.c \
	tool_operhlp.c \
	tool_panykey.c \
	tool_paramhlp.c \
	tool_parsecfg.c \
	tool_setopt.c \
	tool_sleep.c \
	tool_urlglob.c \
	tool_util.c \
	tool_vms.c \
	tool_writeenv.c \
	tool_writeout.c \
	tool_xattr.c

LOCAL_SRC_FILES := $(CURLX_ONES) $(CURL_CFILES)

LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH)/../include \
		$(LOCAL_PATH)/../lib \
		$(LOCAL_PATH)/../../zlib

LOCAL_SHARED_LIBRARIES := libcurl libz

LOCAL_MODULE := curl
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)

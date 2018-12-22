LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := kcp
LOCAL_SRC_FILES := \
	ikcp.c \


include $(BUILD_SHARED_LIBRARY) # 编译生成动态库
# include $(BUILD_STATIC_LIBRARY) # 编译生产静态库

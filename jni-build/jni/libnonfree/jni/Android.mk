LOCAL_PATH  := $(call my-dir)
OPENCV_PATH := E:\Opencv3\OpenCV-2.4.10-android-sdk\sdk\native\jni

include $(CLEAR_VARS)
OPENCV_INSTALL_MODULES := on
OPENCV_CAMERA_MODULES  := off
include $(OPENCV_PATH)/OpenCV.mk

LOCAL_C_INCLUDES :=				\
	$(LOCAL_PATH)				\
	$(OPENCV_PATH)/include

LOCAL_SRC_FILES :=				\
	nonfree_init.cpp			\
	sift.cpp					\
	surf.cpp

LOCAL_MODULE := nonfree
LOCAL_CFLAGS := -Werror -O3 -ffast-math
LOCAL_LDLIBS := -llog -ldl

include $(BUILD_SHARED_LIBRARY)
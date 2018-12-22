1. 执行 build.sh

2. 拷贝 obj 下对应的.a文件到调用方的 Android.mk 同目录下

3. 在调用方 Android.mk 的 LOCAL_PATH 后添加如下代码:


    include $(CLEAR_VARS)

    LOCAL_MODULE          := ferry_core_android
    LOCAL_MODULE_FILENAME := ferry_core_android_static
    LOCAL_SRC_FILES := libferry_core_android.a

    include $(PREBUILT_STATIC_LIBRARY)

4. 在调用 Android.mk 后面添加如下代码


    LOCAL_STATIC_LIBRARIES += ferry_core_android


即 ferry_core_android 为定义的 LOCAL_MODULE 的名字

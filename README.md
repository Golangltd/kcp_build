# kcp_build
Unity3D中可靠UDP网络库kcp的各平台动态库构建项目
 
博客：http://www.cnblogs.com/SChivas/p/7854100.html

ADD-BEGIN by dantezhu

    win32/win64
        make_win32.bat / make_win64.bat
        编译环境为 vs2017

    osx 
        make_osx.sh
        脚本编译原来失效，改为只输出x64位库后正常，xcode版本10.1

    linux64
        make_linux64.sh
        编译脚本正常

    ios
        manual_build_ios
        脚本编译失效，但是直接用 manual_build_ios 没问题，xcode版本10.1

    android
        manual_build_android
        编译脚本失效，使用新建的 manual_build_android 没问题，ndk 版本 r16b。另外，libs除了原有的armeabi-v7a和x86，我把生成的都放进来了

ADD-END

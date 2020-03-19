# kcp_build
Unity3D中可靠UDP网络库kcp的各平台动态库构建项目
 
博客：http://www.cnblogs.com/SChivas/p/7854100.html

kcp: v1.5

编译方法:

    win32/win64
        make_win32.bat / make_win64.bat
        编译环境为 vs2019
        执行结束后会自动拷贝至 Plugins/x86/kcp.dll 和 Plugins/x86_64/kcp.dll

    osx 
        make_osx.sh
        脚本编译原来失效，改为只输出x64位库后正常。
        执行结束后会自动拷贝至 Plugins/kcp.bundle

    linux64
        make_linux64.sh
        编译脚本正常
        执行结束后会自动拷贝至 Plugins/x86_64/libkcp.so

    ios
        manual_build_ios
        脚本编译失效，但是直接用 manual_build_ios 没问题，记得将编译Device设置为Generic IOS Device。
        执行结束后，需要手动将 libkcp.a 拷贝至 Plugins/iOS/

    android
        manual_build_android
        脚本编译失效，使用新建的 manual_build_android/build.sh 没问题，ndk 版本 r16b。另外，libs除了原有的armeabi-v7a和x86，我把生成的都放进来了。
        执行结束后，需要手动将 libs 目录拷贝至 Plugins/Android/

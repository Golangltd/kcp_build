mkdir build32 & pushd build32
cmake -G "Visual Studio 16 2019" -A Win32 ..
popd
cmake --build build32 --config Release
md Plugins\x86
copy /Y build32\Release\kcp.dll Plugins\x86\kcp.dll
rmdir /S /Q build32
pause

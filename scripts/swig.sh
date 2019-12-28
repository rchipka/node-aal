#!/bin/bash

ROOT="$(dirname "${BASH_SOURCE[0]}")/.."

COMMAND="swig";

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  SOURCE="$ROOT/src/linux/mga-aal.i"
  TARGET="$ROOT/src/linux/mga-aal.cc"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  SOURCE="$ROOT/src/macos/mga-aal.i"
  TARGET="$ROOT/src/macos/mga-aal.cc"
else
  SOURCE="$ROOT/src/windows/mga-aal.i"
  TARGET="$ROOT/src/windows/mga-aal.cc"
  COMMAND="C:\swig.exe"
fi


#
# Extra debugging options
#
# INCLUDE="-importall"
# INCLUDE="-includeall"
# -I/usr/include \
# -I/usr/local/include \
# -I/opt/local/include \
# -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include \
# -I"/Library/Developer/CommandLineTools/usr/lib/clang/5.1/include" \
# -I"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/include" \
# -I"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1" \
# -I"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift-migrator/sdk/MacOSX.sdk/usr/include" \
# -debug-typemap

rm -f $TARGET

$COMMAND -I"$ROOT/src/vendor/mga/src/" \
     -I"$ROOT/src/vendor/mga/src/library/" \
     -I"$ROOT/src/vendor/mga/src/aal/" \
     -w-205,-503 \
     -cpperraswarn -includeall -ignoremissing -javascript -node -module node_aal -c++ -v -o $TARGET $SOURCE

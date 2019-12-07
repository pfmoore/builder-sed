#!/bin/sh

# Change this to build a different version of sed
SED_VER=4.7

wget http://ftp.gnu.org/gnu/sed/sed-${SED_VER}.tar.xz
tar xf sed-${SED_VER}.tar.xz
cd sed-${SED_VER}

# Wildcard expansion
echo "int _dowildcard = -1;" >wild.c
x86_64-w64-mingw32-gcc -c wild.c

mingw64-configure LIBS="$(pwd)/wild.o" --disable-nls --disable-i18n

make sed/sed.exe
x86_64-w64-mingw32-strip -s sed/sed.exe

TARGET=../sed-${SED_VER}.zip
zip -j9 ${TARGET} sed/sed.exe

# Display the results
echo
echo
echo Generated executable archive:
echo
ls -l ${TARGET}
unzip -l ${TARGET}

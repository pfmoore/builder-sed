# Windows build script for GNU sed

[GNU sed](https://www.gnu.org/software/sed/) (stream editor) is a non-interactive command-line text editor.

Sed can be built build for Windows, using the mingw64 toolset. Rather than building
direct on a Windows host, cross-compilation on [Fedora Linux](https://getfedora.org/)
is far easier, as Fedora provides []prebuilt binaries](https://fedoraproject.org/wiki/MinGW/Tutorial)
for both the mingw64 toolset and many of the supporting libraries needed by tools like
grep.

This project is simply a script to build grep, along with CI infrastructure to
publish the resulting binaries.

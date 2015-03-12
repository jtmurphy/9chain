9chain
======

A port of the Plan 9 toolchain to Unix. Currently, only the i386 toolchain
(8a, 8c, 8l) and the ARM toolchain (5a, 5c, 5l)  are supported. The code 
still produces Plan 9 binaries (not ELF!) and therefore the programs 
generated will not run on anything except Plan 9.

The toolchain was ported for use in an operating system project. Feel free to
use and play around with it if you like.

NOTE: Requires [plan9port](http://swtch.com/plan9port/)
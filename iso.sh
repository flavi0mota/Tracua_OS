#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/tracua_os.kernel isodir/boot/tracua_os.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "tracua_os" {
	multiboot /boot/tracua_os.kernel
}
EOF
grub-mkrescue -o tracua_os.iso isodir

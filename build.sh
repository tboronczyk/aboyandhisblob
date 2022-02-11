#! /bin/bash

set -e

ORIG='Boy and His Blob, A - Trouble on Blobolonia (U) [!].nes'
ROM="aboyandhisblob-eo.nes"
IPS="aboyandhisblob-eo.ips"
FLIPS="wine /opt/floating/flips.exe"

echo "GENERATING ROM AND IPS FROM $ORIG..."
cp "$ORIG" "$ROM"

echo "Updating font..."
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x25010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x26010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x27010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2A010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2B010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2C010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2D010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2E010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2F010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x30010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x31010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x32010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x33010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x34010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x36010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x37010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x38010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3A010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3B010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3C010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3D010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3E010))
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3F010))
dd if=gfx/28EA0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28EA0)) ## H, X, Y

echo "Updating text..."
## flavors, effects, etc.
dd if=text/00D33.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00D33))
## plural
dd if=text/00C06.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00C06))
dd if=text/00C22.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00C22))
dd if=text/1CC31.bin of="$ROM" conv=notrunc bs=1 seek=$((0x1CC31))
## no beans
dd if=text/00C97.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00C97))
dd if=text/1CC4E.bin of="$ROM" conv=notrunc bs=1 seek=$((0x1CC4E))
## credits
dd if=text/0C2CB.bin of="$ROM" conv=notrunc bs=1 seek=$((0x0C2CB))
## store text
dd if=text/0A55A.bin of="$ROM" conv=notrunc bs=1 seek=$((0x0A55A))
## victory text
dd if=text/0A0F9.bin of="$ROM" conv=notrunc bs=1 seek=$((0x0A0F9))

echo "Updating graphics..."
## remove posessive
dd if=gfx/24080.bin of="$ROM" conv=notrunc bs=1 seek=$((0x24080))
dd if=gfx/24140.bin of="$ROM" conv=notrunc bs=1 seek=$((0x24140))
## subtitle
dd if=gfx/247A0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x247A0))
## title screen copyright
dd if=gfx/24A90.bin of="$ROM" conv=notrunc bs=1 seek=$((0x24A90))
## subway
dd if=gfx/27800.bin of="$ROM" conv=notrunc bs=1 seek=$((0x27800))
dd if=gfx/278F0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x278F0))
dd if=gfx/279F0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x279F0))
## health foods
dd if=gfx/287A0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x287A0))
dd if=gfx/28850.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28850))
## absolute avenue
dd if=gfx/298D0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x298D0))
dd if=gfx/29A00.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29A00))
## graffiti
dd if=gfx/29AD0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29AD0))
dd if=gfx/29B90.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29B90))
dd if=gfx/29CE0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29CE0))
dd if=gfx/29DF0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29DF0))
## "VITAMINO" (for space saving)
dd if=gfx/28EE0.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28EE0))
## on/off switches
dd if=gfx/39550.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39550))
dd if=gfx/39550.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3D650))
dd if=gfx/39680.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39680))
dd if=gfx/39680.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3D6A0))
dd if=gfx/39840.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39840))
dd if=gfx/39840.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3DE80))

echo "Generating Patch..."
$FLIPS -c -i "$ORIG" "$ROM" "$IPS"

echo "Done"

#! /bin/bash

set -e

ORIG='Boy and His Blob, A - Trouble on Blobolonia (U) [!].nes'
ROM="aboyandhisblob-eo.nes"
IPS="aboyandhisblob-eo.ips"
FLIPS="wine /opt/floating/flips.exe"

echo "GENERATING ROM AND IPS FROM $ORIG..."
cp "$ORIG" "$ROM"

echo "Updating CHR..."
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x25010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x26010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x27010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2A010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2B010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2C010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2D010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2E010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x2F010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x30010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x31010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x32010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x33010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x34010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x36010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x37010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x38010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3A010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3B010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3C010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3D010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3E010))
dd if=chr/font.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3F010))
dd if=chr/hxy.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28EA0))
dd if=chr/noapos-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x24080))
dd if=chr/noapos-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x24140))
dd if=chr/subtitle.bin of="$ROM" conv=notrunc bs=1 seek=$((0x247A0))
dd if=chr/copyright.bin of="$ROM" conv=notrunc bs=1 seek=$((0x24A90))
dd if=chr/vitamino.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28EE0))
dd if=chr/subway-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x27800))
dd if=chr/subway-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x278F0))
dd if=chr/subway-3.bin of="$ROM" conv=notrunc bs=1 seek=$((0x279F0))
dd if=chr/healthfoods-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x287A0))
dd if=chr/healthfoods-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x28850))
dd if=chr/absoluteave-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x298D0))
dd if=chr/absoluteave-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29A00))
dd if=chr/graffiti-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29AC0))
dd if=chr/graffiti-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29B80))
dd if=chr/graffiti-3.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29C90))
dd if=chr/graffiti-4.bin of="$ROM" conv=notrunc bs=1 seek=$((0x29D90))
dd if=chr/onoff-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39550))
dd if=chr/onoff-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3D650))
dd if=chr/onoff-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39680))
dd if=chr/onoff-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3D6A0))
dd if=chr/onoff-3.bin of="$ROM" conv=notrunc bs=1 seek=$((0x39840))
dd if=chr/onoff-3.bin of="$ROM" conv=notrunc bs=1 seek=$((0x3DE80))

echo "Updating PRG..."
dd if=prg/flavors.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00D33))
dd if=prg/plural-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00C06))
dd if=prg/plural-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00C22))
dd if=prg/plural-3.bin of="$ROM" conv=notrunc bs=1 seek=$((0x1CC31))
dd if=prg/nobeans-1.bin of="$ROM" conv=notrunc bs=1 seek=$((0x00C97))
dd if=prg/nobeans-2.bin of="$ROM" conv=notrunc bs=1 seek=$((0x1CC4E))
dd if=prg/credits.bin of="$ROM" conv=notrunc bs=1 seek=$((0x0C2CB))
dd if=prg/store.bin of="$ROM" conv=notrunc bs=1 seek=$((0x0A55A))
dd if=prg/victory.bin of="$ROM" conv=notrunc bs=1 seek=$((0x0A0F9))

echo "Generating Patch..."
$FLIPS -c -i "$ORIG" "$ROM" "$IPS"

echo "Done"

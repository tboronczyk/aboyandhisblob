#! /bin/sh

set -e

if [ "$#" -ne 1 ]; then
    echo "usage: $(basename "$0") ROM" 1>&2
    exit
fi
ROM="$1"

echo "\nUpdating font..."
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=151568
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=155664
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=159760
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=163856
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=167952
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=172048
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=176144
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=180240
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=184336
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=188432
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=192528
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=196624
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=200720
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=204816
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=208912
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=213008
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=217104
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=221200
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=225296
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=229392
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=233488
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=237584
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=241680
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=245776
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=249872
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=253968
dd if=gfx/25010.bin of="$ROM" conv=notrunc bs=1 seek=258064
## X Y
dd if=gfx/28EA0.bin of="$ROM" conv=notrunc bs=1 seek=167584

echo "\nUpdating text..."
dd if=text/00D33.bin of="$ROM" conv=notrunc bs=1 seek=3379
## plural
dd if=asm/00C06.bin of="$ROM" conv=notrunc bs=1 seek=3078
dd if=asm/00C22.bin of="$ROM" conv=notrunc bs=1 seek=3106
dd if=asm/1CC31.bin of="$ROM" conv=notrunc bs=1 seek=117809
## credits
dd if=text/0C2CB.bin of="$ROM" conv=notrunc bs=1 seek=49867
## store text
dd if=text/0A55A.bin of="$ROM" conv=notrunc bs=1 seek=42330

echo "\nUpdating graphics..."
## title screen copyright
dd if=gfx/24A90.bin of="$ROM" conv=notrunc bs=1 seek=150160
## subway
dd if=gfx/27800.bin of="$ROM" conv=notrunc bs=1 seek=161792
dd if=gfx/278F0.bin of="$ROM" conv=notrunc bs=1 seek=162032
dd if=gfx/279F0.bin of="$ROM" conv=notrunc bs=1 seek=162288
## health foods
dd if=gfx/287A0.bin of="$ROM" conv=notrunc bs=1 seek=165792
dd if=gfx/28850.bin of="$ROM" conv=notrunc bs=1 seek=165968
## absolute avenue
dd if=gfx/298D0.bin of="$ROM" conv=notrunc bs=1 seek=170192
dd if=gfx/29A00.bin of="$ROM" conv=notrunc bs=1 seek=170496
## graffiti
dd if=gfx/29AD0.bin of="$ROM" conv=notrunc bs=1 seek=170704
dd if=gfx/29B90.bin of="$ROM" conv=notrunc bs=1 seek=170896
dd if=gfx/29CE0.bin of="$ROM" conv=notrunc bs=1 seek=171232
dd if=gfx/29DF0.bin of="$ROM" conv=notrunc bs=1 seek=171504
## "VITAMINO" (for space saving)
dd if=gfx/28ED0.bin of="$ROM" conv=notrunc bs=1 seek=167632


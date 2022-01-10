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
dd if=text/00DAA.bin of="$ROM" conv=notrunc bs=1 seek=3498

echo "\nUpdating graphics..."
## ...


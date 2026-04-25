#!/system/bin/sh
MODDIR=${0%/*}

sleep 10

TARGET="/sys/class/power_supply/battery/cycle_count"
FAKE="$MODDIR/fake_cycle"

if [ -f "$TARGET" ]; then
    chmod 644 "$TARGET"
    mount --bind "$FAKE" "$TARGET"
fi

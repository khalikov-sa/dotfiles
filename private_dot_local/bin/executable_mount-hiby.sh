#!/bin/bash
pkill -9 -f gvfs-mtp-volume-monitor 2>/dev/null
pkill -9 -f kiod6 2>/dev/null
sleep 2
mkdir -p ~/mtp-hiby
jmtpfs ~/mtp-hiby
notify-send "HiBy R4" "Плеер смонтирован в ~/mtp-hiby"

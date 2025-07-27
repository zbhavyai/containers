#!/usr/bin/env bash
set -euo pipefail

# start Xvnc server
echo "[INFO] Starting Xvnc server"
Xvnc -quiet ${DISPLAY} -SecurityTypes None -geometry ${RESOLUTION} -depth 24 &>/dev/null &
PID_XVNC=$!

# wait for Xvnc to start
sleep 3

# start openbox
echo "[INFO] Starting Openbox"
DISPLAY=${DISPLAY} openbox-session &
PID_OPENBOX=$!

# launch Firefox in a respawn loop
while true; do
    echo "[INFO] Launching Firefox"
    DISPLAY=${DISPLAY} firefox \
        --width=1920 \
        --height=1080 \
        &>/dev/null
    echo "[WARN] Firefox exited. Restarting in 1 seconds..."
    sleep 1
done &

wait $PID_XVNC $PID_OPENBOX

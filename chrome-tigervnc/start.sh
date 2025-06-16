#!/usr/bin/env bash
set -euo pipefail

# start Xvnc server
echo "[INFO] Starting Xvnc server"
Xvnc ${DISPLAY} -SecurityTypes None -geometry ${RESOLUTION} -depth 24 &
PID_XVNC=$!

# wait for Xvnc to start
sleep 3

# start openbox
echo "[INFO] Starting Openbox"
DISPLAY=${DISPLAY} openbox-session &
PID_OPENBOX=$!

# launch Chrome in a respawn loop
while true; do
    echo "[INFO] Launching Firefox"
    DISPLAY=${DISPLAY} google-chrome \
        --disable-gpu \
        --disable-software-rasterizer \
        --disable-dev-shm-usage \
        --disable-features=VizDisplayCompositor \
        --disable-smooth-scrolling \
        --start-maximized \
        &>/dev/null
    echo "[WARN] Chrome exited. Restarting in 1 seconds..."
    sleep 1
done &

wait $PID_XVNC $PID_OPENBOX

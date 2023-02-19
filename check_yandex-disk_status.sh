#!/usr/bin/env bash
[[ -x `which yandex-disk` ]] || { echo "No yandex-disk found, exiting" ; exit 3; }
YD_STATUS=$(yandex-disk status | grep 'Synchronization core status:' | cut -d ':' -f 2 | tr -d ' ')
case $YD_STATUS in
    "index")
    echo "STATUS: $YD_STATUS"
    exit 2
    ;;
    "error")
    echo "STATUS: $YD_STATUS"
    exit 2
    ;;
    "busy")
    echo "STATUS: $YD_STATUS"
    exit 1
    ;;
    "idle")
    echo "STATUS: $YD_STATUS"
    exit 0
    ;;
    *)
    echo "UNKNOWN STATUS"
    exit 3
esac
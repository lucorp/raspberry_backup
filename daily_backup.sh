#!/usr/bin/env bash

today=$(date +"%m_%d_%Y")
group=$(id -gn)

sudo dd bs=4 if=/dev/mmcblk0 | gzip > fxcp_backup_$today.img.gz
sudo chown $USER:$group fxcp_backup_$today.img

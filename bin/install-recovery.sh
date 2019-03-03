#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:18018304:4e74a08b8b0d1b64882ba429bda6c629b4ea48d1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13342720:4686174e7ddf9f4d06ac7a75c9d0599ea24671ee EMMC:/dev/block/bootdevice/by-name/recovery 4e74a08b8b0d1b64882ba429bda6c629b4ea48d1 18018304 4686174e7ddf9f4d06ac7a75c9d0599ea24671ee:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

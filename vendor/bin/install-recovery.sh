#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):55574528:af18db5e0fc870d136192bd87247d9df740e1140; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):46137344:1f94c19d4158a367e2567fc9d57f0aa110c67429 \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):55574528:af18db5e0fc870d136192bd87247d9df740e1140 && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi


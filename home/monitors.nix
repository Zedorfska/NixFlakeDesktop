{ config, lib, pkgs, ... }:

{
  services.kanshi = {
    enable = true;
    settings = [
      {
        profile.name = "default";
        profile.outputs = [
          {
            criteria = "DP-1";
            position = "0,0";
            status = "enable";
            mode = "1920x1080@144Hz";
          }
          {
            criteria = "HDMI-A-1";
            position = "1920,15";
            status = "enable";
          }
        ];
      }
    ];
  };

  # This makes DP-1 the primary display on each DE
  # Currently only Hyprland
  wayland.windowManager.hyprland.settings.monitor = [
    "DP-1,1920x1080@144,0x0,1"
    "HDMI-A-1,preferred,1920x0,1"
  ];
}

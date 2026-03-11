{ config, lib, pkgs, ... }:
{
  services.kanshi = {
    enable = true;
    profiles = {
      default = {
        outputs = [
          {
            criteria = "DP-1";
            position = "0,0";
            status = "enable";
          }
          {
            criteria = "HDMI-A-1";
            position = "1920,15";
            status = "enable";
          }
        ];
      };
    };
  };
}

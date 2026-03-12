{ config, lib, pkgs, ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "/mnt/nvme/home/Zvyezdana/Music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "PipeWire"
      }
    '';
  };

  programs.rmpc = {
    enable = true;
  };
}

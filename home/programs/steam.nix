{ config, lib, pkgs }:
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    extraPackages = with pkgs; [
      steamcmd
      steam-tui
    ];
  };
}

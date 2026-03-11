{ pkgs, ... }:

{
  imports =
  [
    ./monitors.nix
    ./theme.nix
    
    ./bundles/core.nix
    #./bundles/cli.nix
    ./environments/hyprland
    ./environments/dwl
    #./kitty.nix
    #./wayland.nix
  ];
  home.stateVersion = "25.11";
}

{ pkgs, ... }:

{
  imports =
  [
    ../programs/kitty.nix
    #../programs/wofi.nix ## TODO: implement
  ];

  services.swww = {
    enable = true;
  };

  home.packages = with pkgs; [
    wofi #
    hyprshot
  ];

  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
}

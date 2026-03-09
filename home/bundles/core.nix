{ pkgs, ... }:

{
  imports =
  [
    ../programs/git.nix
    ../programs/iamb.nix
    ../programs/steam.nix
    #../programs/wofi.nix ## TODO: implement
  ];

  #home.packages = [  ];
}

{ pkgs, ... }:

{
  imports =
  [
    ../programs/git.nix
    ../programs/iamb.nix
    ../programs/librewolf.nix
    ../programs/discord.nix
    #../programs/wofi.nix ## TODO: implement
  ];

  #home.packages = [  ];
}

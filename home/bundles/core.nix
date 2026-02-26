{ pkgs, ... }:

{
  imports =
  [
    ../programs/git.nix
    #../programs/wofi.nix ## TODO: implement
  ];
}

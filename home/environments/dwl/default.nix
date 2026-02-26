{ pkgs, ... }:

let
  dwl-custom = pkgs.dwl.overrideAttrs (old: {
    src = old.src;
    patches = [
      #./patches/pertag.patch
      #./patches/focusmonitors.patch
      # add whatever patches you want
    ];
    postPatch = ''
      cp ${./config.h} config.h
    '';
  });
in
{
  home.packages = [ dwl-custom ];
}

{ ... }:

{
  programs.nixcord = {
    enable = true;
    equibop = {
      enable = true;
    };
    config = {
      useQuickCss = false;
      plugins = {
        messageLogger.enable = true;
      };
    };
  };
}

{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name  = "Zvyezdana";
        email = "Zedorfska@gmail.com";
      };
      init = {
        defaultBranch = "main";
      };
      safe.directory = "/etc/nixos/";
    };
  };
}

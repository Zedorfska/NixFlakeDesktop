{ ... }:

{
  programs.iamb = {
    enable = true;
    settings = {
      profiles = {
        "matrix.org" = {
          url = "https://matrix.org";
          user_id = "@zedorfska:matrix.org";
        };
      };
      default_profile = "matrix.org";
    };
  };
}

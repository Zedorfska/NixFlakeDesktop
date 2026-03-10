{ pkgs, ... }:
{
  programs.librewolf = {
    enable = true;

    settings = {
      "webgl.disabled" = false;  # Off by default
      "privacy.resistFingerprinting" = true;
      "media.ffmpeg.vaapi.enabled" = true;  # hardware video acceleration
    };

    policies = {
      Cookies = {
        Allow = [
          "https://github.com"
        ];
      };
    };
  };

  home.packages = with pkgs.nur.repos.rycee.firefox-addons; [
    ublock-origin
    bitwarden
  ];

}

{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "Geist Mono Medium";
      size = 12;
    };
    settings = {
      bold_font        = "Geist Mono Bold";
      italic_font      = "Geist Mono Italic";
      bold_italic_font = "Geist Mono Bold Italic";

      window_padding_width = 8;
      cursor_shape         = "beam";
      cursor_blink_interval = 0;

      ## = == === !== != !
      repaint_delay = 10;
      sync_to_monitor = "yes";
    };
    extraConfig = ''
      linux_display_server wayland
    '';
  };
}

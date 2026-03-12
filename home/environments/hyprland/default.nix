#
# Don't edit file directly
#

{ pkgs, ... }:
let
  t = (import ../../keybinds/twm.nix).binds;
  k = t.keys;
  mod = k.mod;

  mkBind = combo: action:
    let
      mods = if combo.mods != "" then "${mod} ${combo.mods}" else mod;
    in
      "${mods}, ${combo.key}, ${action}";
in
{
  imports = [
    ./animations.nix
    ./windowrules.nix
    ./workspacerules.nix
    
    ../../bundles/wayland.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    
    settings = {
      
      exec-once =
      [
        "swww-daemon"
        "swww img ${../../wallpapers/wallpaper.png} --transition-type fade"
      ];
      
      input = {
        kb_layout = "hr, rs";
        kb_options = "grp:win_space_toggle";
        sensitivity = "0.0";
        accel_profile = "flat";
      };
      
      bindm = [
        "${mod}, mouse:272, movewindow"
        "${mod}, mouse:273, resizewindow"
      ];

      bind = [
        # Essentials
        (mkBind k.terminal          "exec, ${t.terminal}")
        (mkBind k.menu              "exec, ${t.menu}")
        (mkBind k.file_manager      "exec, ${t.file_manager}")
        (mkBind k.term_file_manager "exec, ${t.term_file_manager}")
        (mkBind k.kill              "killactive,")
        (mkBind k.forcekill         "forcekillactive,")
        (mkBind k.screenshot        "exec, ${t.screenshot}")
        (mkBind k.toggle_float      "togglefloating,")
        (mkBind k.toggle_split      "togglesplit,")

        # Focus movement
        (mkBind k.up    "movefocus, u")
        (mkBind k.down  "movefocus, d")
        (mkBind k.left  "movefocus, l")
        (mkBind k.right "movefocus, r")

        # Move windows
        (mkBind k.move_up    "movewindow, u")
        (mkBind k.move_down  "movewindow, d")
        (mkBind k.move_left  "movewindow, l")
        (mkBind k.move_right "movewindow, r")

        # Swap windows
        (mkBind k.swap_up    "swapwindow, u")
        (mkBind k.swap_down  "swapwindow, d")
        (mkBind k.swap_left  "swapwindow, l")
        (mkBind k.swap_right "swapwindow, r")

        # Resize windows
        (mkBind k.resize_up    "resizeactive, 0 -${toString k.resize_amount}")
        (mkBind k.resize_down  "resizeactive, 0 ${toString k.resize_amount}")
        (mkBind k.resize_left  "resizeactive, -${toString k.resize_amount} 0")
        (mkBind k.resize_right "resizeactive, ${toString k.resize_amount} 0")

        # Workspaces
        (mkBind k.ws1  "workspace, 1")
        (mkBind k.ws2  "workspace, 2")
        (mkBind k.ws3  "workspace, 3")
        (mkBind k.ws4  "workspace, 4")
        (mkBind k.ws5  "workspace, 5")
        (mkBind k.ws6  "workspace, 6")
        (mkBind k.ws7  "workspace, 7")
        (mkBind k.ws8  "workspace, 8")
        (mkBind k.ws9  "workspace, 9")
        (mkBind k.ws10 "workspace, 10")
        (mkBind k.wsA  "togglespecialworkspace, Magic")

        # Move to workspaces
        (mkBind k.mv_to_ws1  "movetoworkspace, 1")
        (mkBind k.mv_to_ws2  "movetoworkspace, 2")
        (mkBind k.mv_to_ws3  "movetoworkspace, 3")
        (mkBind k.mv_to_ws4  "movetoworkspace, 4")
        (mkBind k.mv_to_ws5  "movetoworkspace, 5")
        (mkBind k.mv_to_ws6  "movetoworkspace, 6")
        (mkBind k.mv_to_ws7  "movetoworkspace, 7")
        (mkBind k.mv_to_ws8  "movetoworkspace, 8")
        (mkBind k.mv_to_ws9  "movetoworkspace, 9")
        (mkBind k.mv_to_ws10 "movetoworkspace, 10")
        (mkBind k.mv_to_wsA  "movetoworkspace, special:Magic")
      ];
    };
  };
}

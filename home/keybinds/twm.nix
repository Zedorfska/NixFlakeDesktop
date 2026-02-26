{
  binds = {
    terminal          = "kitty";
    menu              = "wofi --show drun";
    file_manager      = "dolphin";
    screenshot        = "hyprshot -m region --clipboard-only";
    term_file_manager = "nnn";
    
    keys = rec {
      
      mod = "SUPER";
      
      ## Essentials
      terminal          = { mods = "";      key = "C"; };
      file_manager      = { mods = "";      key = "E"; };
      term_file_manager = { mods = "SHIFT"; key = file_manager.key; };
      menu              = { mods = "";      key = "R"; };
      kill              = { mods = "";      key = "Q"; };
      forcekill         = { mods = "SHIFT"; key = kill.key; };
      
      screenshot = { mods = "SHIFT"; key = "S"; };
      #fullscreen  = { mods = ""; key = "F"; };
      
      ## Movement
      up    = { mods = ""; key = "up";    };
      left  = { mods = ""; key = "left";  };
      right = { mods = ""; key = "right"; };
      down  = { mods = ""; key = "down";  };

      ## Window control
      toggle_float = { mods = ""; key = "V"; };
      # TODO: wtf is pseudo ?
      toggle_split = { mods = ""; key = "J"; };

      # Yeah no
      #move_window   = { mods = ""; key = "mouse:272" };
      #resize_window = { mods = ""; key = "mouse:273" };

      move_up    = { mods = "SHIFT"; key = "up";    };
      move_left  = { mods = "SHIFT"; key = "left";  };
      move_right = { mods = "SHIFT"; key = "right"; };
      move_down  = { mods = "SHIFT"; key = "down";  };
      
      swap_up    = { mods = "ALT"; key = "up";    };
      swap_left  = { mods = "ALT"; key = "left";  };
      swap_right = { mods = "ALT"; key = "right"; };
      swap_down  = { mods = "ALT"; key = "down";  };

      resize_up    = { mods = "CONTROL"; key = "up";    };
      resize_left  = { mods = "CONTROL"; key = "left";  };
      resize_right = { mods = "CONTROL"; key = "right"; };
      resize_down  = { mods = "CONTROL"; key = "down";  };
      resize_amount = 100;

      ## Workspace control (TODO: make not ass)
      ws1  = { mods = ""; key = "1"; };
      ws2  = { mods = ""; key = "2"; };
      ws3  = { mods = ""; key = "3"; };
      ws4  = { mods = ""; key = "4"; };
      ws5  = { mods = ""; key = "5"; };
      ws6  = { mods = ""; key = "6"; };
      ws7  = { mods = ""; key = "7"; };
      ws8  = { mods = ""; key = "8"; };
      ws9  = { mods = ""; key = "9"; };
      ws10 = { mods = ""; key = "D"; };

      wsA  = { mods = ""; key = "A"; };
      #wsB  = { mods = ""; key = "B"; };
      #wsC  = { mods = ""; key = "C"; };

      mv_to_ws1  = { mods = "SHIFT"; key = ws1.key; };
      mv_to_ws2  = { mods = "SHIFT"; key = ws2.key; };
      mv_to_ws3  = { mods = "SHIFT"; key = ws3.key; };
      mv_to_ws4  = { mods = "SHIFT"; key = ws4.key; };
      mv_to_ws5  = { mods = "SHIFT"; key = ws5.key; };
      mv_to_ws6  = { mods = "SHIFT"; key = ws6.key; };
      mv_to_ws7  = { mods = "SHIFT"; key = ws7.key; };
      mv_to_ws8  = { mods = "SHIFT"; key = ws8.key; };
      mv_to_ws9  = { mods = "SHIFT"; key = ws9.key; };
      mv_to_ws10 = { mods = "SHIFT"; key = ws10.key; };

      mv_to_wsA  = { mods = "SHIFT"; key = wsA.key; };
      #mv_to_wsB  = { mods = ""; key = wsB.key; };
      #mv_to_wsC  = { mods = ""; key = wsC.key; };

      #mv_to_ws1_s  = { mods = ""; key = ws1.key; };
      #mv_to_ws2_s  = { mods = ""; key = ws2.key; };
      #mv_to_ws3_s  = { mods = ""; key = ws3.key; };
      #mv_to_ws4_s  = { mods = ""; key = ws4.key; };
      #mv_to_ws5_s  = { mods = ""; key = ws5.key; };
      #mv_to_ws6_s  = { mods = ""; key = ws6.key; };
      #mv_to_ws7_s  = { mods = ""; key = ws7.key; };
      #mv_to_ws8_s  = { mods = ""; key = ws8.key; };
      #mv_to_ws9_s  = { mods = ""; key = ws9.key; };
      #mv_to_ws10_s = { mods = ""; key = ws10.key; };

      #mv_to_wsA_s  = { mods = ""; key = wsA.key; };
      #mv_to_wsB_s  = { mods = ""; key = wsB.key; };
      #mv_to_wsC_s  = { mods = ""; key = wsC.key; };
    };
  };
}

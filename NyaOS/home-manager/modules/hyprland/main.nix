{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      monitor = ",1920x1080@60,auto,1";

      exec-once = [
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;

        border_size = 3;

        "col.active_border" = "rgba(180,190,254,1)";
        "col.inactive_border" = "rgba(48,52,70,0.5)";

        resize_on_border = false;

        allow_tearing = false;

        layout = dwindle;
      };

      decoration = {
        rounding = 8;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enable = false;
        };

        blur = {
          enable = false;
        };
      };

      animations = {
        enable = false;
      };

      input = {
        kb_layout = "us,ua";
        kb_options = "grp:caps_toggle";
      };

      dwindle = {
        pseudotile = false;
      };

      misc = {
        disable_hyprland_logo = true;
        background_color = "rgba(0,0,0,0)";
      };
    }
  }
}

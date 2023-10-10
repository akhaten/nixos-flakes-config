{ config, pkgs, lib, ... }:
{

    # Enable the X11 windowing system.
    services.xserver = {
        
        enable = true;
        layout =  "fr";
        libinput.enable = true;
        
        desktopManager.xterm.enable = false;
        displayManager.defaultSession = "none+i3";
        
        windowManager.i3 = {
            enable = true;
            extraPackages = with pkgs; [
                dmenu
                i3status
                i3lock
                i3blocks
            ];
        };

    };
   
}
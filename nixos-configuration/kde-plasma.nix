{ config, pkgs, lib, ... }:
{

    # Enable the X11 windowing system.
    services.xserver = {

        enable = true;
        layout =  "fr";
        libinput.enable = true;
  
        displayManager.sddm.enable = true;
        desktopManager.plasma5.enable = true;

    };
   
}
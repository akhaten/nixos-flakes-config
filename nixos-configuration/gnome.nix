{ config, pkgs, lib, ... }:
{

    # Enable the X11 windowing system.
    services = {
    
        xserver = {

            enable = true;
            layout =  "fr";
            libinput.enable = true;
    
            displayManager.gdm.enable = true;
            desktopManager.gnome.enable = true;
        
        };
        
        gnome = {
            core-utilities.enable = false;
            core-developer-tools.enable = false;
            gnome-keyring.enable = true;
        };

    };
   
}
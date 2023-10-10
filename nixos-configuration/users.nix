{ config, pkgs, lib, ... }:
{

    programs.zsh.enable = true;

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.akhaten = {
        isNormalUser = true;
        shell = pkgs.zsh;
        # Enable ‘sudo’ for the user.
        extraGroups = [ "wheel" "scanner" "lp" "docker" ]; 
        packages = with pkgs; [
	        kitty
            firefox
            home-manager
            gnome.nautilus
        ];
    };
   
}

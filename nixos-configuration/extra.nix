{ config, pkgs, lib, ... }:
{

    services = {
 
        openssh.enable = true;
        blueman.enable = true;

        printing = {
            enable = true;
            drivers = [ pkgs.hplipWithPlugin ];
        };


  
    };
    
    hardware = {
    
        sane = {
            enable = true;
            extraBackends = [ pkgs.hplipWithPlugin ];
        };
    
        opengl = {
            enable = true;
            extraPackages = with pkgs; [
                libGL
                libGLU
            ];
            setLdLibraryPath = true;
        };

        pulseaudio.enable = true;

        bluetooth.enable = true;
        

    };

    # Enable sound.
    sound.enable = true;

    virtualisation = {
        docker.enable = true;
        docker.daemon.settings = {
        	data-root = "/home/akhaten/Docker";
        };
    };
   
}

{ config, pkgs, ... }:

{

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./packages/apps/apps.nix
    ./packages/dev/dev.nix
    ./packages/gnome/gnome.nix
    #./nix-ld.nix
  ];


  home.username = "akhaten";
  home.homeDirectory = "/home/akhaten";

  fonts = {
    fontconfig.enable = true;
  };

  home.packages = with pkgs; [

    # nix-ld

    #blender
    #godot
    # networkmanager
    # networkmanager-openvpn
    # networkmanager-vpnc
    #github-desktop
    # wpa_supplicant
    # wpa_supplicant_gui
    # openvpn
    #dmenu
    whitesur-gtk-theme


    # Fonts
    # jetbrains-mono
    # fira-code
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    # fira-code-symbols


  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    #LD_LIBRARY_PATH="/run/opengl-driver/lib:/run/opengl-driver-32/lib";
  };

    
  home.stateVersion = "23.05";

}

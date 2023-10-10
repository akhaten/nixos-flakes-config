{ config, pkgs, lib, ... }:
{

  boot.loader = {
    
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };

    grub = {
      enable = true;
      #version = 2;
      devices = [ "nodev" ];
      efiSupport = true;
      useOSProber = true;
      #gfxmodeBios = "1920x1080";
      gfxmodeEfi = "1920x1080";
      gfxpayloadEfi = "keep";
      # extraConfig = ''
      #   set theme=Vimix-1080p/Vimix/theme.txt
      # '';
      #extraConfig = ''
      #  set theme=/boot/grub/themes/Vimix/theme.txt
      #'';
      theme = pkgs.stdenv.mkDerivation {
        pname = "distro-grub-themes";
        version = "3.1";
        src = pkgs.fetchFromGitHub {
	  owner = "AdisonCavani";
          repo = "distro-grub-themes";
          rev = "v3.1";
          hash = "sha256-ZcoGbbOMDDwjLhsvs77C7G7vINQnprdfI37a9ccrmPs=";
        };
        installPhase = "cp -r customize/nixos $out";
        #name = "Vimix";
        #src = pkgs.fetchgit {
        #  url = "https://github.com/Se7endAY/grub2-theme-vimix.git";
        #  sha256 = "sha256-mEvTmIbRFqkmZtTOzQnJDg9gdqlI+yMb+FHquIUyES0=";
        #};
        #installPhase = "cp -r Vimix $out";
      };
    };

  };

}

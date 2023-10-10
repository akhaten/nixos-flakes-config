{ config, pkgs, ... }:

{
  
  imports = [
	./gtk.nix
  ];
#   gtk = {
	
# 	# https://hoverbear.org/blog/declarative-gnome-configuration-in-nixos/#gtk3-gtk4-cursor-icon-and-window-themes
# 	# https://rycee.gitlab.io/home-manager/options.html#opt-gtk.iconTheme
	
# 	enable = true;

# 	theme.name = "Nordic-darker";
# 	theme.package = pkgs.nordic;
# 	# theme.package = pkgs.palenight-theme;
# 	# theme.package = pkgs.gnome.gnome-themes-extra;

	
# 	iconTheme.name = "Papirus-Dark";
# 	# iconTheme.package = pkgs.gnome.adwaita-icon-theme;
# 	iconTheme.package = pkgs.papirus-icon-theme;
	
# 	cursorTheme.name = "Adwaita";
# 	# cursorTheme.package = pkgs.numix-cursor-theme;

# 	gtk3.extraConfig = {
#       Settings = ''
#         gtk-application-prefer-dark-theme=1
#       '';
#     };

#     gtk4.extraConfig = {
#       Settings = ''
#         gtk-application-prefer-dark-theme=1
#       '';
#     };

#   };

#   home.sessionVariables.GTK_THEME = "Nordic";
  
  home.packages = with pkgs; [


	gnome.networkmanager-openvpn
	gnome.networkmanager-vpnc
	gnome.networkmanager-openconnect

  	## Gnome apps
	#gnome.gnome-terminal
	gnome.nautilus
	gnome.gnome-tweaks
	gnome.gnome-calendar
	gnome.simple-scan
	gnome.eog
	
	#gnome-frog


	## Gnome exts
	gnomeExtensions.material-shell
	gnomeExtensions.user-themes
	gnomeExtensions.user-themes-x
	gnomeExtensions.night-theme-switcher
	gnomeExtensions.dark-variant
	gnomeExtensions.openweather
	gnomeExtensions.tiling-assistant
	# gnomeExtensions.pano
	# gnomeExtensions.obmin
	# gnomeExtensions.docker
	# gnomeExtensions.dotspaces
	# gnomeExtensions.gsconnect
	# gnomeExtensions.strongdm
	# gnomeExtensions.ssh-tray
	# gnomeExtensions.sermon
	# gnomeExtensions.unblank
	# gnomeExtensions.arcmenu
	# gnomeExtensions.worksets
	# gnomeExtensions.switcher
	# gnomeExtensions.keyman
	# gnomeExtensions.freon
	# gnomeExtensions.vitals
	# gnomeExtensions.babar
	#gnome.gnome-shell-extensions

	### Tiling
	# gnomeExtensions.gtile
	# gnomeExtensions.forge
	# gnomeExtensions.tactile
	# gnomeExtensions.paperwm
	# gnomeExtensions.tilingnome
	
	
	
	## Other apps
	evince
	#guake
	wike
	gnome.gnome-boxes
	#pika-backup
	#drawing
	#amberol

	# Themes
	

  
  ];


#   xdg.configFile."gnome-shell/gnome-shell.css".source = ./gnome-shell-dark.css;


}

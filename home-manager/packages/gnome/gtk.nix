{ config, pkgs, ... }:

{
  
  gtk = {
	
	# https://hoverbear.org/blog/declarative-gnome-configuration-in-nixos/#gtk3-gtk4-cursor-icon-and-window-themes
	# https://rycee.gitlab.io/home-manager/options.html#opt-gtk.iconTheme
	
	enable = true;

	#theme.name = "Nordic-darker"; theme.package = pkgs.nordic;
  	theme.name = "Dracula"; theme.package = pkgs.dracula-theme;
  	#theme.name = "Gruvbox-dark"; theme.package = pkgs.gruvbox-dark-gtk;
  
	# theme.package = pkgs.palenight-theme;
	# theme.package = pkgs.gnome.gnome-themes-extra;

	#iconTheme.name = "Dracula"; iconTheme.package = pkgs.dracula-icon-theme;
	iconTheme.name = "Papirus-Dark"; iconTheme.package = pkgs.papirus-icon-theme;
  	#iconTheme.name = "Papirus-Dark"; iconTheme.package = pkgs.gruvbox-dark-icons-gtk;
	#iconTheme.name = "Adwaita"; iconTheme.package = pkgs.gnome.adwaita-icon-theme;
	
	
	cursorTheme.name = "Adwaita";
	# cursorTheme.package = pkgs.numix-cursor-theme;

	gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

  };

#   home.sessionVariables.GTK_THEME = "Nordic";

}

# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:
{

	imports = [ 
			# Base
			## Include the results of the hardware scan.
			./hardware-configuration.nix
			./boot.nix
			# After nixos-install
			./users.nix
			./gnome.nix
			./extra.nix
	];

	nixpkgs.config = {
		allowUnfree = true;
		allowUnbroken = true;
		allowUnfreePredicate = (pkg: true);
		#allowBroken = true;
	};

	# Open ports in the firewall.
	networking = {
		# hostName = "nixos";
		networkmanager.enable = true;
		# wireless.enable = true;
		firewall = {
			allowedTCPPorts = [ 22 ];
			# allowedUDPPorts = [ ... ];
			# enable = false;
		};
	};

	# Set your time zone.
	time.timeZone = "Europe/Paris";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_US.UTF-8";
	console = {
		font = "Lat2-Terminus16";
		keyMap = "fr";
	};

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	# List packages installed in system profile. To search, run:
	# $ nix search wget
	environment.systemPackages = with pkgs; [
		vim
		#nvim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
		wget
		#home-manager
		# networkmanager
		# openvpn
		#wineWowPackages.stable
		#(wine.override { wineBuild = "wine64"; })
		#wineWowPackages.staging
		#winetricks
	];
	
	system = {
		copySystemConfiguration = true;
		stateVersion = "23.05";
	};

}


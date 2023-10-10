{pkgs, fetchPypi, lib, ...} : 

{

	# home.packages = with pkgs; [
	# 	kitty-themes
	# ];

	programs.kitty = {

		enable = true;
		# theme = "Dracula";
		
	};

	xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;


}

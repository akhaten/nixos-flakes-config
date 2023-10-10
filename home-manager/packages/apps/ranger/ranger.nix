{pkgs, ...} : 
{

	home.packages = with pkgs; [
		ranger
	];

	xdg.configFile."ranger/rc.conf".source = ./rc.conf;
    #programs.ranger = {
    #    enable = true;
    #};

    

}

{ config, pkgs, ... }:

{

  imports = [
    ./vscode/vscode.nix
    ./git/git.nix
    ./nvim/nvim.nix
  ];
  
  home.packages = with pkgs; [
    texlive.combined.scheme-full
    singularity
	  #jetbrains.clion
	  #jetbrains.pycharm-community
	  #qtcreator
	  #qt5.full
    
	  #obsidian
	  #kdevelop # KDE only
	  #lapce
  ];


}

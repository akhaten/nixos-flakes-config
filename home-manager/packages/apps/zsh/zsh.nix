{pkgs, ...} : 
{

  #home.packages = with pkgs; [
  #  zsh-nix-shell
  #];

  programs.zsh = {
  
    enable = true;
        
      zplug = {
        enable = true;
        plugins = [
          { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
          { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; } # Installations with additional options. For the list of options, please refer to Zplug README.
		  # { name = "MichaelAquilina/zsh-autoswitch-virtualenv"; }
		];
      };

    initExtra = builtins.readFile ./extra.zshrc;
    #initExtra = ''
	#  POWERLEVEL9K_CONFIG_FILE=p10k.zsh
	#  alias ut3-ssh="\"ssh\"\"$1@fsi-ens-f30.univ-tlse3.fr\""
	#  alias store-search="ls -d /nix/store/* | grep $1"
	#'';

	#initExtra = ''
	#  plugins=(virtualenv)
	#  POWERLEVEL9K_CONFIG_FILE=p10k.zsh
	#  POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
	#  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv time)
	#'';

	#initExtra = ''
	#  POWERLEVEL9K_CONFIG_FILE=~/.config/p10k.zsh
    #  POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true 
    #  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv time)
    #''; 

  };

}

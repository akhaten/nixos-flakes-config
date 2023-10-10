{ config, pkgs, ... }:

{

  imports = [
    ./firefox/firefox.nix
    ./kitty/kitty.nix
    #./ranger/ranger.nix
    ./zsh/zsh.nix
  ];


  home.packages = with pkgs; [
    #yt-dlp 
    #ranger
    discord
    spotify
    gimp
    obs-studio
    xournalpp
    brave # Can use Tor like Tor Browser
    zoom-us
    # nix-ld
    #libsForQt5.k3b # Image writer
    #unzip
    #filezilla
    #openvpn
    #chromium
    thunderbird
    libreoffice
  ];

}

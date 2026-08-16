{
  services.spotifyd = {
    enable = true;
  };
  imports = [./spotify_secrets.nix];
  programs.spotify-player.enable = true;
}

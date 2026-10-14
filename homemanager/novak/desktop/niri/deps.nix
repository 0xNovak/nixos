{pkgs, ...}: {
  home.packages = with pkgs; [
    xwayland-satellite
    fuzzel
    jq
  ];
}

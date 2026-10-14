{
  lib,
  config,
  pkgs,
  ...
}: let
  todo = pkgs.rustPlatform.buildRustPackage rec {
    pname = "todo-cli";
    version = "0.1.0";
    src = pkgs.fetchFromGitHub {
      owner = "0xNovak";
      repo = "todo-cli";
      rev = "v${version}";
      hash = "sha256-Uck4h4Yag1/+SVnn5A7Zp0QLS7eh/g8df+c7aTqYGy4=";
    };
    cargoHash = "sha256-ap+UXa2PLjemGppo+tZ+AdiBwuI+IlqymysvZlAKrlg=";
  };
in {
  options.conf.novak.enable = lib.mkEnableOption "Enable 0xNovak github packages";
  config = lib.mkIf config.conf.novak.enable {
    home.packages = [
      todo
    ];
  };
}

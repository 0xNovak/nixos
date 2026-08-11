{lib, ...}: {
  options.de = {
    enableNiri = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "";
    };
  };
}

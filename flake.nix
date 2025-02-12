{
  description = "flake for NeoVim configuration development";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      # set alternate config to keep main config from breaking
      # NVIM_APPNAME = "nvim-lua";

      # required packages: parsers and lsps
      packages = with pkgs; [
        nodePackages.prettier
        lua-language-server
        nil
      ];
    };
  };
}

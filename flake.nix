{
  description = "My advent of code solutions.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShells.x86_64-linux = {
        zig = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            zig
          ];
        };
      };
    };
}

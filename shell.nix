{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  packages = [
    zig_0_10
  ];
}


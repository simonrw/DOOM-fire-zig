{ pkgs ? import <nixpkgs> {} }:
with pkgs;
stdenv.mkDerivation {
  pname = "DOOM-fire";
  version = "unstable";

  src = fetchFromGitHub {
    owner = "const-void";
    repo = "DOOM-fire-zig";
    rev = "2dd8bffc91f5b1e7fe032382f655e0be7ec0a6f7";
    hash = "sha256-n/ho30FuT+59khAbLHGnESaH7IcM9Ud8jQ7l4TgYQOQ=";
  };

  nativeBuildInputs = [
    zig_0_10.hook
  ];
}

let
  defaultPkgs = import <nixpkgs> {};
  pinnedPkgs = import (defaultPkgs.fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs-channels";
    rev = "354fd3728952c229fee4f2924737c601d7ab4725";
    sha256 = "052hfh3w2086zaaskx0y0dz4y6y2bpvj0xqlcarpbwn2ccnpph0j";
  }) {};

in

{ nixpkgs ? pinnedPkgs }:

let
  pkgs = if nixpkgs == null then defaultPkgs else pinnedPkgs;
  devEnv = with pkgs; buildEnv {
    name = "devEnv";
    paths = [
      maven3
      nodejs-6_x
      openjdk8
      travis
    ];
  };
in
  pkgs.runCommand "dummy" {
    buildInputs = [
      devEnv
    ];
  } ""

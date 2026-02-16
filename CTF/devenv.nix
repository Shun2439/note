{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    cmake
    ninja
    bazel

    go-task

    gdb
    gef
    # pwndbg

    pwninit
    pwntools
    python3Packages.pycryptodome

    ghidra
  ];

  # https://devenv.sh/languages/
  languages.rust.enable = true;
  # languages.c.enable = true;
  # languages.ruby = {
  #   enable = true;
  #   bundler.enable = true;
  # };
  languages.java = {
    enable = true;
    gradle.enable = true;
  };
  languages.python = {
    enable = true;
    # venv.enable = true;
    # venv.requirements = ''
    #   pwntools
    # '';
  };
}

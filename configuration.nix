{ config, lib, pkgs, inputs, user, stateVersion, ... }:
{
  inputs = [
    ./hardware-configuration.nix
    ../modules
  ];
}

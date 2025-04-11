{
    description = "Nullenvk's personal Nix Flake devshell templates ";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils"; 
    };

    
  outputs = {nixpkgs, flake-utils, ...}: {
    templates = rec {
        default = python;
        
        python = {
            path = ./python;
            description = "Python development environment";
        };
    };
  };
}

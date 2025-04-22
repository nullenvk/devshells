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

        c-cpp = {
            path = ./c-cpp;
            description = "C/C++ development environment";
        };

        haskell = {
            path = ./haskell;
            description = "Haskell development environment";
        };

        c = c-cpp;
        cpp = c-cpp;
    };
  };
}

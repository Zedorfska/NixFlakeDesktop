{
  description = "Znyeg system configuration";

  inputs = {
    #nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.Znyeg = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hardware-configuration.nix
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.Zvyezdana = import ./home/default.nix;

          ## List of shame
          nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (nixpkgs.lib.getName pkg) [
            "nvidia-x11"
            "nvidia-settings"
            "discord"
            "discord-gamesdk"
            "steam"
            "steam-unwrapped"
            "steamcmd"
            "vscode"
            "vscode-extension-ms-dotnettools-csharp"
          ];
        }
      ];
    };
  };
}

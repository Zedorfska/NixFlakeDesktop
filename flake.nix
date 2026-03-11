{
  description = "Znyeg system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nur.url = "github:nix-community/NUR";
    nixcord.url = "github:KaylorBen/nixcord";
  };

  outputs = { self, nixpkgs, home-manager, nur, nixcord, ... }: {
    nixosConfigurations.Znyeg = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hardware-configuration.nix
        ./configuration.nix
        home-manager.nixosModules.home-manager
        { nixpkgs.overlays = [ nur.overlays.default ]; }
        { home-manager.sharedModules = [ nixcord.homeModules.nixcord ]; }
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

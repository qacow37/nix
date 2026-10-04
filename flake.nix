{
	description = "NixOS Flake for my System";
	inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		cachyos-kernel = {
			url = "github:xddxdd/nix-cachyos-kernel";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		catppuccin = {
			url = "github:catppuccin/nix";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		zen-browser = {
			url = "github:0xc000022070/zen-browser-flake";
			inputs.nixpkgs.follows = "nixpkgs";
			inputs.home-manager.follows = "home-manager";
		};
		nixcord = {
			url = "github:FlameFlag/nixcord";
			inputs.nixpkgs.follows = "nixpkgs";
			inputs.nixpkgs-nixcord.follows = "nixpkgs";
		};
		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		niri = {
			url = "github:epireyn/niri-flake";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		prismnix = {
			url = "path:/home/qow/projects/prismnix/";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {nixpkgs, home-manager, ...}@inputs:
	let
		defaultSpecialArgs = {
            root = ./.;
			inputs = inputs;
		};
	in
	{
		nixosConfigurations =
		{
			"nixos" = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";

				modules = [
					({pkgs, ...}:{
						environment.systemPackages = [
							home-manager.packages.${pkgs.system}.home-manager
						];
					})
					./nixos/nixos
					/etc/nixos/hardware-configuration.nix
				];
				specialArgs = defaultSpecialArgs;
			};
		};
		homeConfigurations = {
			"qow" = home-manager.lib.homeManagerConfiguration {
				pkgs = import nixpkgs {
					system = "x86_64-linux";
					overlays = [
						inputs.prismnix.overlays.default
					];
					config.allowUnfree = true;
				};
				modules = [
					inputs.catppuccin.homeModules.catppuccin
					inputs.zen-browser.homeModules.beta
					inputs.nixvim.homeModules.nixvim
					inputs.nixcord.homeModules.nixcord
					inputs.niri.homeModules.niri
					inputs.prismnix.homeModules.prismnix
					./home/qow
				];
				extraSpecialArgs = defaultSpecialArgs;
			};
		};
	};
}

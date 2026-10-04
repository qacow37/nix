{
	imports = [
		./settings.nix
	];
	programs.starship = {
		enable = true;
		enableFishIntegration = true;
	};
}

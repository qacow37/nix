{lib, config, ...}:
{
	options.home.fonts = {
		enable = lib.mkEnableOption "Enable the installation of home fonts";
		packages = lib.mkOption {
			type = lib.types.listOf lib.types.package;
			description = "The fonts to install into the home";
		};
	};
	config = lib.mkIf config.home.fonts.enable {
		home.packages = config.home.fonts.packages;
	};
}

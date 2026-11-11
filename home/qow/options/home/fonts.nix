{lib, config, ...}:
let
    cfg = config.home.fonts;
in
{
	options.home.fonts = {
		enable = lib.mkEnableOption "Enable the installation of home fonts";
		packages = lib.mkOption {
			type = lib.types.listOf lib.types.package;
			description = "The fonts to install into the home";
		};
        fontPaths = lib.mkOption {
            type = lib.types.listOf lib.types.str;
            description = "Option containing a list of all font paths";
            readOnly = true;
        };
	};
	config = lib.mkIf cfg.enable {
		home.packages = cfg.packages;
        home.fonts.fontPaths = map (p:
            "${p}/share/fonts"
        ) cfg.packages;
	};
}

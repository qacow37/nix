{lib, pkgs, config, ...}:
{
	options.programs.myrmpc = {
		enable = lib.mkEnableOption "Enable rmpc";
		package = lib.mkOption {
			type = lib.types.nullOr lib.types.package;
			default = pkgs.rmpc;
			description = "The package to install for rmpc";
		};
		config = lib.mkOption {
			type = lib.types.lines;
			default = "";
			description = "The rmpc configuration file";
		};
		themes = lib.mkOption {
			type = lib.types.attrsOf lib.types.lines;
			default = {};
			description = "Themes to create for rmpc";
		};
	};
	config = let cfg = config.programs.myrmpc; in
		lib.mkIf cfg.enable {
			home.packages = let pkg = cfg.package; in
				lib.mkIf (pkg != null) [
					pkg
				];
			xdg.configFile = (lib.mapAttrs' (k: v:
				{
					name = "rmpc/themes/${k}.ron";
					value = {
						text = v;
					};
				}
			) cfg.themes) // {
				"rmpc/config.ron" = lib.mkIf (cfg.config != "") {
					text = cfg.config;
				};
			};
		};
}

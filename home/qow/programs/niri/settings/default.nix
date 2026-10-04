{config, ...}:
{
	imports = [
		./binds.nix
		./cursor.nix
		./layout.nix
		./outputs.nix
		./xwayland-satellite.nix
	];
	programs.niri.settings = {
		prefer-no-csd = true;

		input.keyboard = {
			repeat-delay = 150;
			repeat-rate = 50;
		};
		gestures.hot-corners.enable = false;
		hotkey-overlay.skip-at-startup = true;
		recent-windows.enable = false;

		blur = {
			passes = 5;
			offset = 8;
			noise = 0.04;
			saturation = 0.75;
		};

		layer-rules = [
			{
				matches = [{namespace = "wpaperd.*";}];
				place-within-backdrop = true;
			}
		];
		window-rules = [
			{
				background-effect = {
					blur = true;
					xray = false;
				};
			}
			{
				geometry-corner-radius = let v = 20.0; in
				{
					bottom-left  = v;
					bottom-right = v;
					top-left     = v;
					top-right    = v;
				};
				clip-to-geometry = true;
			}
		];

		screenshot-path = "${config.xdg.userDirs.pictures}/screenshots/%m-%d:%H-%M-%S.png";
	};
}

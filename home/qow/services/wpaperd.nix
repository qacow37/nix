{root, ...}:
{
	services.wpaperd =
	let
		wallpaper = {
			path = root + /assets/background.png;
			mode = "center";
		};
	in
	{
		enable = true;
		settings = {
			"DP-1" = wallpaper;
			"eDP-1" = wallpaper;
		};
	};
}

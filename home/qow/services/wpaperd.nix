{root, ...}:
{
	services.wpaperd =
	let
		wallpaper = {
			path = root + /assets/image4.png;
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

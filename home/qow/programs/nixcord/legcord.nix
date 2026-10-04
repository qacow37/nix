{pkgs, ...}:
{
	programs.nixcord.legcord = {
		enable = true;
		settings = {
			channel = "stable";
			doneSetup = true;
			mods = [];
			hardwareAcceleration = true;
			minimizeToTray = false;
			tray = "none";
		};
	};
}

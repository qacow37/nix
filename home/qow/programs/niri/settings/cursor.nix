{pkgs, ...}:
{
	programs.niri.settings.cursor = {
		theme = "${pkgs.bibata-cursors}/share/icons/Bibata-Modern-Classic";
		size = 16;
		hide-when-typing = true;
		hide-after-inactive-ms = 1500;
	};
}

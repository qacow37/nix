{pkgs, ...}:
{
	home.fonts = {
		enable = true;
		packages = with pkgs; [
			# Noto Fonts
			noto-fonts
			noto-fonts-cjk-sans
			noto-fonts-cjk-serif
			noto-fonts-color-emoji
			#_0xproto

			# Nerd Fonts
			nerd-fonts.jetbrains-mono
		];
	};
}

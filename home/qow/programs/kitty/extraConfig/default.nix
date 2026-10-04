{
	imports = [./maps.nix];

	programs.kitty.extraConfig =
	''
		font_family        JetbrainsMonoNL Nerd Font
		bold_font          auto
		italic_font        auto
		bold_italic_font   auto
		font_size          24.0

		background_opacity 0.2
		background_blur    1
		background         #000000
	'';
}

{lib, ...}:
{
	programs.starship.settings =
	let
		style = rec {
			bch = "◥";
			ech = "◣";

			do = fg: bg: "(fg:${fg} bg:${bg})";
			dobg = bg: do "#11111b" bg;
			beg = c: n:          "[${bch}]${do n c}";
			end = c: n: "${dobg c}[${ech}]${do c n}";
		};

		mkmod = fmt: attr: {
			disabled = false;
			format = fmt;
		} // attr;
	in
	{
		format = lib.concatStrings
		[
			"[ $os ]"        (style.end "#f38ba8" "#fa9698"  )
			"[ $hostname ]"  (style.end "#fa9698" "#fca48c"  )
			"[ $username ]"	 (style.end "#fca48c" "#fab387"  )
			"[ $directory ]" (style.end "#fab387" "#00000000")

			"    "
			"$git_metrics"

			"$line_break"
			"$character"
		];

		os = mkmod "$symbol" {
			symbols.NixOS = " ";
		};
		hostname = mkmod "$hostname" {
			ssh_only = false;
			trim_at = "";
		};
		username = mkmod "$user" {
			show_always = true;
		};
		directory = mkmod "$path" {
			truncation_symbol = "…/";
			truncation_length = 5;
			truncate_to_repo = true;
		};

		git_metrics = let
			prefix = lib.concatStrings [
				(style.beg "transparent" "#FFFFFF")
				"[ ]"
				(style.end "#FFFFFF" "#a6e3a1")
			];
			added = lib.concatStrings [
				# (style.beg "transparent" "green")
				"[ +$added ]"
				(style.end "#a6e3a1" "#f38ba8")
			];
			deleted = lib.concatStrings [
				# no begin
				"[ -$deleted ]"
				(style.end "#f38ba8" "transparent")
			];
		in mkmod "${prefix}${added}${deleted}" {};
	};
}

{lib, pkgs, ...}:
{
	home.clipboard = let pkg = pkgs.wl-clipboard-rs; in
	{
		package = pkg;
		command = {
			copy  = "${lib.getExe' pkg "wl-copy"}";
			paste = "${lib.getExe' pkg "wl-paste"} --no-newline";
		};
	};
}

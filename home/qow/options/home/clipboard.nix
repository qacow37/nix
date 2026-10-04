{lib, ...}:
{
	options.home.clipboard = {
		package = lib.mkOption {
			type = lib.types.package;
			description = "The package to use for the clipboard";
		};
		command = {
			copy = lib.mkOption {
				type = lib.types.str;
				description = "The command used to copy from the clipboard";
			};
			paste = lib.mkOption {
				type = lib.types.str;
				description = "The command used to paste from the clipboard";
			};
		};
	};
}

{config, ...}:
{
	programs.nixvim.globals = {
		mapleader = " ";
		loaded_netrw = 1;
		loaded_netrwPlugin = 1;

		clipboard = {
			name = "wl-clipboard";
			copy = {
				"+" = config.home.clipboard.command.copy;
				"*" = config.home.clipboard.command.copy;
			};
			paste = {
				"+" = config.home.clipboard.command.paste;
				"*" = config.home.clipboard.command.paste;
			};
			cache_enabled = true;
		};
	};
}

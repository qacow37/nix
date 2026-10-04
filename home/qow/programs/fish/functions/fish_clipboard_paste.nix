{config, ...}:
{
	# Reference:
	# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_clipboard_paste.fish
	programs.fish.functions."fish_clipboard_paste" = {
		body = ''
			set -l data
			set data (${config.home.clipboard.command.paste} 2>/dev/null | string collect -N)

			if not string length -q -- "$data"
				return 1
			end

			if not isatty stdout
				printf %s $data
				return
			end

			__fish_paste $data
		'';
		description = "Paste from the system clipboard.";
	};
}

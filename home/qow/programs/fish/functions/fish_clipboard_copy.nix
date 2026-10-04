{config, ...}:
{
	# Reference:
	# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_clipboard_copy.fish
	programs.fish.functions."fish_clipboard_copy" = {
		body = ''
			set -l cmdline
			if isatty stdin
				set cmdline (commandline --current-selection | fish_indent --only-indent | string collect)
				test -n "$cmdline"; or set cmdline (commandline | fish_indent --only-indent | string collect)
			else
				while read -lz line
					set -a cmdline $line
				end
			end
			printf %s $cmdline | ${config.home.clipboard.command.copy} & disown
		'';
		description = "Copy to the system clipboard.";
	};
}

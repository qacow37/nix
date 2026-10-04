{root, ...}:
{
	programs.fastfetch.settings = {
		display = {
			# who tf decided I dont want to see errors???
			showErrors = true;

			size = {
				binaryPrefix = "jedec";
				ndigits = 0;
				spaceBeforeUnit = "never";
			};

			# add four spaces
			key.width = 7;
			separator = "";
			color.output = "#eff1f5";
		};

		logo = {
			type = "kitty";
			source = root + /assets/fastfetch/logo.png;
			preserveAspectRatio = true;

			height = 6;
			padding = {
				top   = 1;
				left  = 1;
				right = 4;
			};
		};

		modules = [
			{
				type = "title";
				format = "{##fe640b}{user-name}@{host-name}";
			}
			{
				type = "os";
				key = "sys";
				format = "{pretty-name}";
				keyColor = "#cba6f7";
			}
			{
				type = "kernel";
				key = "ker";
				format = "{release}";
				keyColor = "#d97eb5";
			}
			{
				type = "packages";
				key = "pkg";
				format = "{all}";
				keyColor = "#da5375";
			}

			{
				type = "cpu";
				key = "cpu";
				format = "{name}";
				keyColor = "#d20f39";
			}
			{
				type = "gpu";
				key = "gpu";
				format = "{name}";
				hideType = "integrated";
				keyColor = "#e13630";
			}
			{
				type = "memory";
				key = "mem";
				format = "{used}/{total}";
				keyColor = "#f04f23";
			}
		];
	};
}

{
	programs.nixvim.plugins.web-devicons = {
		enable = true;
		settings = {
			color_icons = true;
			strict = true;

            override_by_extension = {
                "typ" = {
                    icon = "";
                    color = "#239dad";
                    name = "Typst";
                };
            };
		};
	};
}

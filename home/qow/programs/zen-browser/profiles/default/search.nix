{
	programs.zen-browser.profiles.default.search = {
		force = true;
		default = "brave";
		engines = {
			"brave" = {
				name = "Brave";
				urls = [
					{
						template = "https://search.brave.com/search?q={searchTerms}";
					}
				];
			};
			"mynixos" = {
				name = "My NixOS";
				urls = [
					{
						template = "https://mynixos.com/search?q={searchTerms}";
					}
				];
				definedAliases = ["@mynix"];
			};
			"noogle" = {
				name = "Noogle";
				urls = [
					{
						template = "https://noogle.dev/q/?term={searchTerms}";
					}
				];
				definedAliases = ["@nog"];
			};
			"steamdb" = {
				name = "SteamDB";
				urls = [
					{
						template = "https://steamdb.info/search/?q={searchTerms}";
					}
				];
				definedAliases = ["@steamdb"];
			};
			"protondb" = {
				name = "ProtonDB";
				urls = [
					{
						template = "https://protondb.com/search?q={searchTerms}";
					}
				];
				definedAliases = ["@protondb"];
			};
			"reddit" = {
				name = "Reddit";
				urls = [
					{
						template = "https://reddit.com/search/?q={searchTerms}";
					}
				];
				definedAliases = ["@rdd"];
			};

            "love2d" = {
                name = "Löve";
                urls = [
                    {
                        template = "https://love2d.org/w/index.php?search={searchTerms}";
                    }
                ];
                definedAliases = ["@lov"];
            };
		};
	};
}

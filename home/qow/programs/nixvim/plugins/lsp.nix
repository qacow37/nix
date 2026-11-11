{config, ...}:
{
	programs.nixvim.plugins.lsp = {
		enable = true;
		servers = {
			rust_analyzer = {
				enable = true;
				installCargo = false;
				installRustc = false;

                # settings = {
                #     check = {
                #         # Requires `lib.getExe`
                #         command = "${pkgs.clippy}";
                #     };
                # };
			};
			nixd = {
				enable = true;
			};
			emmylua_ls = {
				enable = true;
                settings = {
                    filetypes = ["lua"];
                    root_markers = [
                        ".emmyrc.json"
                        ".luarc.json"
                        ".git"
                    ];
                };
			};
			qmlls = {
				enable = true;
			};
            roslyn_ls = {
                enable = true;
            };

            tinymist = {
                enable = true;
                settings = {
                    fontPaths = config.home.fonts.fontPaths;
                };
            };
		};
	};
}

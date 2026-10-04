{pkgs, ...}:
{
    # programs.prismnix.instances.test = {
    #     minecraft = {
    #         enable = true;
    #         modpack = {
    #             enable = true;
    #             package = pkgs.prismnix.mkModrinthPkg {
    #                 name = "Homestead";
    #                 type = "mrpack";
    #                 id = "6HvKwSky";
    #                 version = {
    #                     id = "WMsE2fOj";
    #                     file = "Homestead 1.3.7.mrpack";
    #                     hash = "sha256-1b0B4mwLeDmlZTZP1q1roPSL2wDPlIQXpxSCbB9pZNo=";
    #                 };
    #             };
    #         };
    #     };
    # };
	programs.prismnix.instances.main = {
		minecraft = {
			enable = true;
			version = "1.21.11";

			mod-loader = {
				enable = true;
				loader = "fabric";
			};

			mods = {
				fabric-api.enable = true;
				sound-controller = {
					enable = true;
					settings = {
						sounds = {
							"minecraft:entity.enderman.ambient" = 0.3;
							"minecraft:entity.enderman.death"   = 0.3;
							"minecraft:entity.enderman.hurt"    = 0.3;
							"minecraft:entity.enderman.scream"  = 0.3;
						};
					};
				};
			};

			allowed-symlinks.enable = true;
			packages = with pkgs.prismnix; [
				# Dependencies
				yacl
				malilib
				fabric-language-kotlin

				# Performance
				sodium
				entityculling
				krypton

				# Essentials
				modmenu
				cubes-without-borders

				# Utility
				zoomify
				freecam
				minihud
				# sound-controller

				# Atmosphere
				particle-rain
				better-clouds

				# ResourcePacks
				default-dark-mode
				low-on-fire
				programmer-art-fix
				blaksuits-bushy-grass
                noendflash
			];
		};
	};
}

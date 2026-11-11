{pkgs, ...}:
{
	programs.prismnix.instances.main = {
		minecraft = {
			enable = true;
			version = "1.21.11";

			mod-loader = {
				enable = true;
				loader = "fabric";
			};
			allowed-symlinks.enable = true;

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
                            "minecraft:entity.minecart.inside"  = 0.3;
						};
					};
				};
			};

			packages = with pkgs.prismnix; [
                # Deps
                yacl
                malilib
                fabric-language-kotlin

                # Performance
                sodium
                entityculling

                # Ambient
                particle-rain
                coolrain
                better-clouds

                # Utility
                modmenu
                minihud
                zoomify
                anti-tool-break
                freecam

                # Resourcepack
                default-dark-mode
                simple-grass-flowers
                enhanced-grass
                low-on-fire
                pacp
                noendflash
			];
		};
	};
}

{pkgs, inputs, ...}:
let
    spicePkgs = inputs.spicetify.legacyPackages.${pkgs.stdenv.system};
in
{
    programs.spicetify = {
        enable = true;
        enabledExtensions = [
            spicePkgs.extensions.adblockify
            {
                src = pkgs.fetchFromGitHub {
                    owner = "sermyyy";
                    repo = "CoListen";
                    rev = "dcef69e";
                    hash = "sha256-WqRxL7guvEq6baZQnFvHhQhoexZS4ip/4mmB+tonGuU=";
                };
                name = "coListen.js";
            }
        ];
    };
}

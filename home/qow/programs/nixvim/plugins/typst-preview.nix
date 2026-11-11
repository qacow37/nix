{lib, pkgs, config, ...}:
{
    programs.nixvim.plugins.typst-preview = {
        enable = true;
        settings = {
            partial_rendering = true;
            follow_cursor = false;
            dependencies_bin = {
                tinymist = "${lib.getExe pkgs.tinymist}";
                websocat = "${lib.getExe pkgs.websocat}";
            };
            open_cmd = "${lib.getExe config.programs.zen-browser.package} %s";

            extra_args = map (p:
                "--font-path=${p}"
            ) config.home.fonts.fontPaths;
        };
    };
}

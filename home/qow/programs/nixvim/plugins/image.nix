{
    programs.nixvim.plugins.image = {
        enable = true;

        settings = {
            backend = "kitty";
            processor = "magick_rock";

            integrations = {
                markdown = {
                    enabled = true;
                    clear_in_insert_mode = false;
                    download_remote_images = false;
                    only_render_image_at_cursor = false;
                    floating_windows = true;
                    filetypes = ["markdown"];
                };
                asciidoc = {
                    enabled = true;
                    clear_in_insert_mode = false;
                    download_remote_images = false;
                    only_render_image_at_cursor = false;
                    floating_windows = true;
                    filetypes = ["asciidoc"];
                };

                neorg.enabled = false;
                rst.enabled = false;
                typst.enabled = false;
                html.enabled = false;
                css.enabled = false;
            };
            max_width = null;
            max_height = null;
            max_width_window_percentage = null;
            max_height_window_percentage = 50;
            scale_factor = 1.0;

            hijack_file_patterns = [
                "*.png"
                "*.jpg"
                "*.jpeg"
                "*.gif"
                "*.webp"
                "*.avif"
            ];
        };
    };
}

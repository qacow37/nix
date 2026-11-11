{
    programs.nixvim.plugins.fyler = {
        enable = true;
        settings = {
            auto_confirm_simple_mutation = false;
            bound_cursor = true;
            follow_current_file = true;

            kind = "split_left";
            mappings = {
                i = {
                    "jj" = {
                        action = "<ESC>";
                    };
                };
                n = {
                    "." = {
                        action = "toggle_ui";
                        args = [
                            "hidden_items"
                        ];
                    };
                    "r" = {
                        action = "refresh";
                        args = {
                            recursive = true;
                            force = true;
                        };
                    };
                    "<BS>" = {
                        action = "shrink";
                        args = {
                            parent = true;
                        };
                    };
                    "q" = {
                        action = "close";
                    };

                    "-" = {
                        action = "<Nop>";
                    };
                    "<C-R>" = {
                        action = "<Nop>";
                    };
                    "<C-S>" = {
                        action = "<Nop>";
                    };
                    "<C-T>" = {
                        action = "<Nop>";
                    };
                    "<C-V>" = {
                        action = "<Nop>";
                    };
                    "=" = {
                        action = "<Nop>";
                    };
                    "g." = {
                        action = "<Nop>";
                    };
                    "gi" = {
                        action = "<Nop>";
                    };
                };
            };

            extensions = {
                git = {
                    enabled = true;
                    inline = true;
                };
                trash = {
                    enabled = true;
                };
            };

            integrations = {
                icon = "nvim_web_devicons";
            };

            ui = {
                hidden_items = {
                    # There is only one switch
                    # and its useless. So just
                    # overwrite all enabled
                    # switches to none.
                    switches = [""];
                    patterns = [
                        "%.git$"
                        "%.godot$"
                        "%.uid$"
                    ];
                };
                indent_guides = true;
            };
        };
    };
}

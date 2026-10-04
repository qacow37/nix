{config, ...}:
{
	services.mpd = let music = config.xdg.userDirs.music; in
	{
		enable = true;
		musicDirectory = "${music}";
		playlistDirectory = "${music}/playlists";

		extraConfig = ''
			replaygain "track"
			audio_output {
				type "pipewire"
				name "PipeWire Output"
			}
		'';
	};
}

{
	programs.myrmpc.config = ''
		(
			// theme: Some("main"),
			enable_mouse: false,

			keybinds: (
				clear: true,
				global: {
					"q": Quit,
					"?": ShowHelp,
					":": CommandMode,

					"mz": ToggleRepeat,
					"mx": ToggleRandom,
					"mc": ToggleConsume,
					"mv": ToggleSingle,
					"p": TogglePause,
					"s": Stop,

					"<": PreviousTrack,
					">": NextTrack,
					",": SeekBack,
					".": SeekForward,

					"<Tab>": NextTab,
					"<S-Tab>": PreviousTab,
				},
				navigation: {
					"<Esc>": Close,
					"<Enter>": Confirm,

					"h": Left,
					"j": Down,
					"k": Up,
					"l": Right,
					"<C-u>": UpHalf,
					"<C-d>": DownHalf,
					"K": MoveUp,
					"J": MoveDown,
					"gu": Top,
					"gd": Bottom,

					"<Space>": Select,
					"<C-Space>": InvertSelection,

					"/": EnterSearch,
					"n": NextResult,
					"N": PreviousResult,

					"a": AddOptions(kind: Action(AddOpts(
						all: false,
						autoplay: None,
						position: EndOfQueue,
					))),
					"i": AddOptions(kind: Action(AddOpts(
						all: false,
						autoplay: None,
						position: AfterCurrentSong,
					))),
					"D": Delete,

					"<C-p>r": Rename,
					"<C-p>ss": Save(kind: Modal(
						all: false,
						current: false,
						duplicates_strategy: Ask,
					)),
					"<C-p>sa": Save(kind: Modal(
						all: true,
						current: false,
						duplicates_strategy: Ask,
					)),
				},
				queue: {
					"d": Delete,
					"D": DeleteAll,

					"<Enter>": Play,
					"gc": JumpToCurrent,

					"X": Shuffle,

					/*
						"S": Sort(kind: Modal([
							("Artist - Album - Track", (
								tags: [
									Ohter("albumartist"),
									Album,
									Track,
								],
								descending: false,
							)),
							("Title", (
								tags: [
									Track,
								],
								descending: false,
							)),
							("Artist", (
								tags: [
									Artist,
								],
								descending: false,
							)),
						])),
					*/
				},
			),
		)
	'';
}

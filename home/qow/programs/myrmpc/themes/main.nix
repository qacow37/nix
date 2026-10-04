{
	programs.myrmpc.themes.main =
	''
		(
			symbols: (
				song: "S",
				playlist: "P",
				marker: "M",
				dir: "🖿",
				ellipsis: Some("…"),
			),
			progress_bar: (
				symbols: [
					"◖█",
					"█",
					"█",
					" ",
					"█◗",
				],
			),

			layout: Split(
				direction: Horizontal,
				panes: [
					(
						size: "100%",
						pane: Pane(TabContent),
					),
				],
			),

			tabs: [
				(
					name: "queue",
					pane: Split(
						direction: Horizontal,
						panes: [
							(
								size: "75%",
								pane: Pane(Queue),
							),
							(
								size: "25%",
								pane: Pane(AlbumArt),
							),
						],
					),
				),
			],
		)
	'';
}

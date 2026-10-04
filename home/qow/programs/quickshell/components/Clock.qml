import Quickshell
import QtQuick

Text {
	SystemClock {
		id: clock
		precision: SystemClock.Minutes
	}

	font.family: "JetBrainsMono Nerd Font"
	font.pixelSize: parent.height / 1.7
	font.weight: Font.DemiBold
	renderType: Text.NativeRendering

	text: Qt.formatTime(clock.date, "hh:mm")
}

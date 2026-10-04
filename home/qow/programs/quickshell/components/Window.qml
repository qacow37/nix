import Quickshell
import Quickshell.Wayland
import QtQuick

Rectangle {
	anchors.fill: parent

	Text {
		font.family: "JetBrainsMono Nerd Font"
		font.pixelSize: parent.height / 1.7
		font.weight: Font.DemiBold
		renderType: Text.NativeRendering
		text: ToplevelManager.activeToplevel.title
	}
	color: "transparent"
}

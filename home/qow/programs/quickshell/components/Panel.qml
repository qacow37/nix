import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts

PanelWindow {
	id: root

	property string namespace: ""
	default property alias children: containerData.data

	WlrLayershell.layer: WlrLayer.Top
	WlrLayershell.namespace: namespace
	WlrLayershell.keyboardFocus: WlrKeyboardFocus.None

	color: "transparent"
	exclusiveZone: 0
	anchors.top: true

	Rectangle {
		id: panel
		color: "transparent"

		anchors.fill: parent
		radius: root.height / 1.5
		topLeftRadius: 0
		topRightRadius: 0

		RowLayout {
			id: containerData
			anchors.centerIn: parent
			height: parent.height
		}
	}
	BackgroundEffect.blurRegion: Region {
		item: panel
		topLeftRadius: 0
		topRightRadius: 0
		radius: panel.radius
	}
}

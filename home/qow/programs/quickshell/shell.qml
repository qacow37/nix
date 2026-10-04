import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Shapes

ShellRoot {
	/*Panel {
		namespace: "qs:panel"
		implicitWidth: 800
		implicitHeight: 43

		Clock {
			color: "white"
		}
		Window {}
    }*/
    PanelWindow {
        id: root
        implicitHeight: 100
        implicitWidth: 600

        Shape {
            anchors.fill: parent
            ShapePath {
                strokeWidth: 0
                fillColor: "red"
                startX: 0
                startY: 0

                PathCubic {
                    x: root.height
                    y: root.height
                    control1X: root.height
                    control1Y: 0
                    control2X: 0
                    control2Y: root.height
                }
                PathLine {
                    x: root.height * 5
                    y: root.height
                }
                PathCubic {
                    x: root.height * 6
                    y: 0
                    control1X: root.height * 6
                    control1Y: root.height
                    control2X: root.height * 5
                    control2Y: 0
                }
            }
        }

        WlrLayershell.layer: WlrLayer.Top
        WlrLayershell.keyboardFocus: WlrKeyboardFocus.None

        color: "transparent"
        exclusiveZone: 0
        anchors.top: true
    }
}

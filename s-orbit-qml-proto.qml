import QtQuick 2.0

Rectangle {
    id:root
    Text {
        anchors.centerIn: parent
        text: "Hello World"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
        }
    }

    BottomPanel {
        id: bottomPanel
        PlanetPanel {
            id: planetPanel
            Item {
                anchors.top: planetPanel.top
                anchors.bottom: bottomPanel.bottom
                anchors.left: planetPanel.left
                anchors.right: planetPanel.right

                PlanetList {

                }
            }
        }
    }
}


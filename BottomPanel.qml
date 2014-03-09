import QtQuick 2.0

Rectangle {
    id: bottomPanel
    width: parent.width
    height: 100
    x: 0
    y: parent.height
    color: "#807F7F7F"

    property bool isRaised: false

    Rectangle {
        id: raiseButton
        width: 30
        height: 30
        x: 30
        y: -30
        color: parent.color

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (isRaised) {
                    bottomPanel.y += bottomPanel.height
                    isRaised = false
                } else {
                    bottomPanel.y -= bottomPanel.height
                    isRaised = true
                }
            }
        }
    }
}

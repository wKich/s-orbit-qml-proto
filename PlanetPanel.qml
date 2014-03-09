import QtQuick 2.0

Rectangle {
    id: planetList
    width: 300
    height: 0
    anchors.bottom: parent.top
    anchors.right: parent.right
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
                    planetList.height = 0
                    isRaised = false
                } else {
                    planetList.height = 800
                    isRaised = true
                }
            }
        }
    }
}

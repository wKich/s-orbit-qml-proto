import QtQuick 2.0

ListView {
    id: planetListView
    anchors.fill: parent
    anchors.margins: 8
    spacing: 4
    model: planetListModel
    delegate: planetListDelegate

    ListModel {
        id: planetListModel
    }

    Component {
        id: planetListDelegate

        Rectangle {

            TextEdit {

            }
        }
    }
}


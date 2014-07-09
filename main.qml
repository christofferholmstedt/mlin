import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Layouts 1.1

Window {
    id: root
    visible: true
    width: Screen.width / 2
    height: Screen.height / 2

    RowLayout {
        id: row_Layout
        anchors.fill: parent
        spacing: 5

        Rectangle {
            id: left_Menu
            color: "teal"
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            Layout.minimumHeight: 200
            Layout.preferredHeight: 400
            Layout.maximumHeight: 400

            anchors.top: parent.top


            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.quit();
                }
            }
        }

        Rectangle {
            id: left_Menu_Border_Bottom
            Layout.preferredWidth: left_Menu.width
            Layout.preferredHeight: 1
            anchors.top: left_Menu.bottom
            anchors.left: left_Menu.left
            color: "black"
        }

        Rectangle {
            id: left_Menu_Border
            Layout.preferredWidth: 1
            Layout.preferredHeight: parent.height
            anchors.left: left_Menu.right
            color: "black"
        }

        Rectangle {
            id: main
        }
    }
}

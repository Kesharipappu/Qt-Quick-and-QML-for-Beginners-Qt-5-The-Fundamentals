import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Repecter Demo")

    Flickable {
        contentHeight: columnId.implicitHeight
        anchors.fill: parent

        Column {
            id: columnId
            anchors.fill: parent
            spacing: 2

            Repeater {
                //model : 10
                model: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

                delegate: Rectangle {
                    width: parent.width
                    height: 50
                    color: "dodgerblue"
                    Text {
                        anchors.centerIn: parent
                        text: modelData
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            console.log("Clicked on :" + modelData)
                        }
                    }
                }
            }
        }
    }
}

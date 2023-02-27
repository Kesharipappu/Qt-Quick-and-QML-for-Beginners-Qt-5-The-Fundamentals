import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Inline Model Demo")

    ListView {
        id: mListViewId
        anchors.fill: parent
        model: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        delegate: Rectangle {
            id: rectangleId
            width: parent.width
            height: 50

            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id:  textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: modelData
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on :"+ modelData)
                }
            }
        }
    }



}

import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Header Footer and Highlight Demo")

    ListView {
        id: mListViewId
        anchors.fill: parent
        header: headerId
        footer: Rectangle {
            width: parent.width
            height: 50
            color: "dodgerblue"
        }
        highlight: Rectangle {
            width: parent.width
            color: "blue"
            radius: 14
            border.color: "yellowgreen"
            z: 3
            opacity: 0.1
        }

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
                    mListViewId.currentIndex = index
                }
            }
        }
    }

    Component {
        id: headerId
        Rectangle {
            id: headerRectId
            width: parent.width
            height: 50
            color: "yellowgreen"
            border {
                color: "#9EDDF2"
                width: 2
            }

            Text {
                anchors.centerIn: parent
                text: "Months"
                font.pixelSize: 20
            }
        }
    }

}

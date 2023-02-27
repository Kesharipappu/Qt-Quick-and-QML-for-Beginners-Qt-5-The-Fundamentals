import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("GridView Demo")

    ListModel {
        id: modelId

        ListElement {
            mNumber : 1
            mColor : "red"
        }
        ListElement {
            mNumber : 2
            mColor : "green"
        }
        ListElement {
            mNumber : 3
            mColor : "beige"
        }
        ListElement {
            mNumber : 4
            mColor : "yellowgreen"
        }
        ListElement {
            mNumber : 5
            mColor : "dodgerblue"
        }
        ListElement {
            mNumber : 6
            mColor : "lightyellow"
        }
        ListElement {
            mNumber : 7
            mColor : "pink"
        }
        ListElement {
            mNumber : 8
            mColor : "magenta"
        }
        ListElement {
            mNumber : 9
            mColor : "silver"
        }
    }

    GridView {
        id: mGridViewId
        anchors.fill: parent
//        layoutDirection: Qt.RightToLeft
//        flow: GridView.FlowTopToBottom
        model: modelId
        delegate: Rectangle {
            width: 100
            height: width
            color: mColor
            Text {
                text: mNumber
                anchors.centerIn: parent
                font.pointSize: 10
            }
        }
    }
}

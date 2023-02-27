import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Split View Demo")

    SplitView {
        anchors.fill: parent
//        orientation: Qt.Horizontal
        orientation: Qt.Vertical

        Rectangle {
//            width: 200
            height: 200
//            Layout.maximumWidth: 400
            Layout.maximumHeight: 400
            color: "lightblue"
            Text {
                text: "View 1"
                anchors.centerIn: parent
            }
        }
        Rectangle {
            id: centerItem
//            Layout.minimumWidth: 50
//            Layout.fillWidth: true
            Layout.maximumHeight: 400
            Layout.fillHeight: true
            color: "lightgray"
            Text {
                text: "View 2"
                anchors.centerIn: parent
            }
        }
        Rectangle {
//            width: 200
            height: 200
            color: "lightgreen"
            Text {
                text: "View 3"
                anchors.centerIn: parent
            }
        }
    }

}

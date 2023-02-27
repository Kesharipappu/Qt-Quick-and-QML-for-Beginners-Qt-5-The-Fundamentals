import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Progress Bar Demo")

    Column {
        width: parent.width
        spacing: 20

        Button {
            text: "Start"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                progressBarId.value = 78
            }
        }

        Dial {
            id: dialId
            from: 1
            to: 100
            value: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: {
                progressBarId.value = value
            }
        }

        ProgressBar {
            id: progressBarId
            from: 1
            to: 100
            value: 40
            anchors.horizontalCenter: parent.horizontalCenter
        }
        ProgressBar {
            id:progressBarId1
            indeterminate: true

            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}

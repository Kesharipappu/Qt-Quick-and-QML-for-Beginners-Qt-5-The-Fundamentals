import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Font Dialog Demo")

    Column {
        spacing: 20
        anchors.centerIn : parent

        Button {
            text: "Choose Font"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                fontDialogId.open()
            }
        }
        Text {
            id: textId
            text: "Hello World"
        }
        FontDialog {
            id: fontDialogId
            title: "Choose Font"
            font: Qt.font({ family: "Arial", pointSize: 24, weight:Font.Normal})

            onAccepted: {
                console.log("Choose Font :" +font)
                textId.font = fontDialogId.font
            }
            onRejected: {
                console.log("Dialog Rejected")
            }
        }
    }
}

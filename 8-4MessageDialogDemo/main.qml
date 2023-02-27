import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.3
//
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Message Dialog Box")

    Button {
        text: "Push Me"
        onClicked: {
            messageDialog.open()
        }
    }
    MessageDialog {
        id: messageDialog
        title: "May I have your attention Please !!!"
        text: "It's so cool that you are using Qt Quick."
        standardButtons: StandardButton.Ok | StandardButton.Close
        onAccepted: {
            console.log("And of course you could only agree.")
        }
        onRejected: {
            console.log("You rejected the dialog")
        }
    }
}

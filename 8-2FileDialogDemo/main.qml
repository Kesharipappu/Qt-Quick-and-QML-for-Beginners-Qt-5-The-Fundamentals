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
    title: qsTr("File Dialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Choose Files or Folders"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                fileDialogId.open()
            }
        }
        Text {
            id: textId
            text: "User hasn't choosen yet"
            wrapMode: Text.Wrap
        }
        FileDialog {
            id: fileDialogId
            title: "Choose Files or Folders"
//            selectFolder: true     //it will display on folders
            selectFolder: false
            selectMultiple: true
            onAccepted: {
//                textId.text = fileUrl     //For single file or favoriteFolders
                textId.text =fileUrls[3]
                for (var i = 0; i < fileUrls.length; i++) {
                    console.log("Value "+ i + "is :" +fileUrls[i])
                }
            }
            onRejected: {

            }
        }
    }
}

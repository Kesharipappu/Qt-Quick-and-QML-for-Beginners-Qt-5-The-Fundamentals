import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
//

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Button Demo")

//    RowLayout {
    ColumnLayout {
        anchors.left: parent.left
        anchors.right: parent.right

        Button {
            id: button1
            text: "Button1"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on Button1")
            }
            onDoubleClicked: {
                console.log("Double Clicked on Button1")
            }
        }

        Button {
            id:button2
            text: "Button2"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked ob Button2")
            }
        }
    }
}

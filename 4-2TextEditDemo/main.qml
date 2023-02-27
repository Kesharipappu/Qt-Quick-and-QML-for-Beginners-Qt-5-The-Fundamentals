import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Edit Demo")


    Flickable {
    id: mFlickableId

        width: textInputId.width
        contentHeight: textInputId.implicitHeight
        height: 300
        clip: true
        anchors.centerIn: parent


        TextEdit {
            id: textInputId
            width: 240


            wrapMode: TextEdit.Wrap
            text: "<b>Hello</b>  <i>World !</i>"
            textFormat: TextEdit.RichText
            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true

            onEditingFinished: {
                console.log("The current  text is :"+ text)
            }
        }

    }
    Rectangle{
        width: 200
        height: 100
        color: "red"
        anchors.top: mFlickableId.bottom
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("The new text is :"+textInputId.text)
            }
        }
    }
}

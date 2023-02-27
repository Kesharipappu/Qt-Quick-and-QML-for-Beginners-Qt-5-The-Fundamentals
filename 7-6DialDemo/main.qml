import QtQuick 2.15
import QtQuick.Window 2.15
//
import QtQuick.Controls 2.4
//

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dial Demo")

    Column {
        width: parent.width
        spacing: 40

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A know used to let the user choose a value from a range"
            font.pointSize: 15
        }
        Dial {
            anchors.horizontalCenter: parent.horizontalCenter
            from: 1
            to: 100
            value: 50
//            wrap: true

            onValueChanged: {
//                console.log("Current value :" + value)     // This line will show number with decimal value like -> 56.23
                console.log("Current value :" + Math.floor(value)) // This line will not show delimal value . It will show like -> 55

            }
        }
    }
}

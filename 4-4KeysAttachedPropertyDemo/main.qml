import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("keys attached property")

    Rectangle {
        id: containedRect
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true

        Keys.onDigit1Pressed: {
            console.log("Specific signal :Pressed on key 1")
            event.accepted = true
        }

//        Keys.onDigit5Pressed: {
//            if(event.modifiers === Qt.ControlModifier)
//            {
//                console.log("Pressed Control + 5")
//            }
//            else
//            {
//                console.log("Pressed regular 5")
//            }
//        }

        Keys.onPressed: {
            if (event.key === Qt.Key_1)
            {
                console.log("General signal :Pressed on key 1")
            }
            if((event.key === Qt.Key_5) && (event.modifiers & Qt.ControlModifier))
            {
                console.log("Pressed control + 5")
            }
        }
    }
}

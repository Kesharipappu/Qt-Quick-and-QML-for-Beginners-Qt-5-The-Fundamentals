import QtQuick 2.15
import QtQuick.Window 2.15
import "utilities1.js" as Utilities1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JavaScript Import Demo")

    Rectangle {
        width: 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent

        Text {
            text: "Click Me"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
               // console.log("Hello There")
                //Utilities1.greeting()

                console.log("our ages combined yield :" + Utilities1.combineAges(33,17))
                console.log("The diffirence of 50 and 33 is :" +Utilities1.substract(50,33))
            }
        }
    }
}

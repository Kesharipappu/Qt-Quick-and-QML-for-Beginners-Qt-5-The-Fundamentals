import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Android Demo")
    Rectangle {
        color: "red"
        anchors.fill: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Clicked on the rectangle")
            }
        }
    }
}
